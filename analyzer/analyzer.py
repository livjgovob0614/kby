import os
import sys
from queue import Queue

from capstone import *
from capstone.arm64_const import *

import disassembler
import API
from formats.constructs import *
from formats.enums import *

from datetime import datetime
import fileinput
import shutil

_ADRP_TYPES = {
  "else": 0,
  "text_sec": 1,
  "data_sec": 2
}

class Analyzer():

    #def __init__(self, loader, exe, f, function_info_f=None, lst_f=None):
    def __init__(self, loader, exe, f, out_dir=None):
        self.exe = exe
        self.in_file = f

        self.out_dir = out_dir
        self.f_info = "input/"+os.path.basename(f.name)+"/funcInfo"
        self.lst_f = "funcText"

        self.first_adr = 0x999999
        self.last_adr = 0x0
        self.adrp_ins = []
        self.adrp_list = []
        self.adrp_target_list = []

        """ Analyze a file f using a user-specified loader. It will start from the
        procedures given by the loader, then try a recursive descent from there
        """

        self.queue = Queue()
        self.doc = API.Document()
        loader.load_file(f, self.doc)

        self.capstone_handle = disassembler.setup_capstone(self.doc)

        print("Successfully loaded", f.name,
            "using loader", loader_name(loader))


    def start(self):
        print("Analyzing...")
        self.analyze()
        print("Analysis complete")

        # XXX self.print_disasm_result()

        # TODO
        self.classify_adrp_targets()

        data_cnt = 0
        if self.adrp_list:
          data_cnt, res_dir = self.write_result(self.in_file)
          print ("*** Results are in", res_dir)
        else:
          print ("*** No adrp target in text section.")

        if not self.out_dir is None:
          with open(self.out_dir+"/result.stat", 'a+') as f:
            write_str = os.path.basename(self.in_file.name)+"\t"+str(len(self.adrp_list))+"\t"+str(data_cnt)+"\n"
            f.write(write_str)
            print (write_str)



    def analyze(self):
        # TODO
        self.known_ends = []
        self.starts = []
        for addr in self.doc.proc_to_analyze:
            # XXX XXX print("Adding proc at address", hex(addr), "(found by loader), type:",type(addr))
            self.queue.put(addr)
            self.starts.append(addr)
        self.doc.proc_to_analyze = None

        symtab = self.exe.helper.get_section_by_name('.symtab')
        if symtab: self.get_sym_function_info(symtab)
        print ("\n\n")
        dynsym = self.exe.helper.get_section_by_name('.dynsym')
        if dynsym: self.get_sym_function_info(dynsym)

        if not self.f_info is None:
          self.get_text_function_info()

        print ("Disassembly begins")
        self.recursive_descent()


    def get_sym_function_info(self, sym):
        for symbol in sym.iter_symbols():
          if symbol['st_info']['type'] == 'STT_FUNC' and symbol['st_shndx'] != 'SHN_UNDEF':
            addr = symbol['st_value']
            fname = symbol.name
            # XXX XXX print ("Adding funcion", fname, "from", sym.name ,"at", hex(addr))
            self.queue.put(addr)
            self.starts.append(addr)
            # TODO why should symbol have size when adding function?
            if symbol['st_size']:
              self.known_ends.append(symbol['st_value']+symbol['st_size']-0x4)
              # XXX XXX print ("   size", symbol['st_size'])


    def get_text_function_info(self):
        # print (self.f_info)
        #sys.exit()
        with open(self.f_info, 'r') as f:
          for i, line in enumerate(f):
            target = int(line, 16)
            # aa: print (hex(target))
            if i & 1:
              self.known_ends.append(target)
            else:
              # XXX XXX print ("Adding funcion from", os.path.basename(f.name) ,"at", hex(target))
              self.queue.put(target)
              self.starts.append(target)


    def recursive_descent(self):
        uncond_target = 0
        while not self.queue.empty() or uncond_target:
            # XXX print ("\n****************************\nStarting at new disasm_point!")
            if uncond_target:
              start_adr = uncond_target
              uncond_target = 0
            else:
              start_adr = self.queue.get()

            if start_adr < self.first_adr:
              self.first_adr = start_adr

            cur_section = self.exe.section_containing_vaddr(start_adr)
            #print ("current:",hex(start_adr))
            if cur_section == None:
              # XXX XXX print ("137 none type: current: ",hex(start_adr))
              continue
            section_end_vaddr = cur_section.vaddr + cur_section.size
            end_adr = min([addr for addr in self.starts if addr > start_adr] or ([section_end_vaddr] or [addr for addr in sorted(self.known_ends) if addr > start_adr]))

            start_adr &= ~0b1
            code = self.exe.get_binary_vaddr_range(start_adr, end_adr)
            ins_list = self.capstone_handle.disasm(code, start_adr)


            for ins in ins_list:
              if self.doc.is_instruction(ins.address) or self.doc.is_instruction_body(ins.address):
                continue

              if not ins.id:
                #TODO continue (.inst 0x00000000 case?) 
                break

              self.doc.set_instruction(ins.address, ins.size)

              if ins.address > self.last_adr:
                self.last_adr = ins.address

              if ins.id in stop_instruction:
                break

              if ins.mnemonic.startswith('adrp'):
                res = self.get_adrp_target(ins)
                if res[2]:
                  self.adrp_ins.append(res)
                #XXX print ("ADRP!")
                #for i in self.adrp_ins[-1]:
                #  print (hex(i))
              elif ins.id in branch_instructions:
                if ins.operands[0].type == ARM64_OP_IMM:
                  if ins.id in conditional_branch_instructions or (ins.cc != ARM64_CC_AL and ins.cc):
                    self.queue.put(ins.operands[0].imm)
                    # XXX print("Adding br target :", hex(ins.operands[0].imm))
                  else:
                    if ins.id in call_instructions:
                      try:
                        # TODO Assume next of call = instr
                        self.queue.put(next(ins_list).address)
                      except StopIteration:
                        pass
                    uncond_target = ins.operands[0].imm
                    # XXX print("Go to br target -->", hex(ins.operands[0].imm))
                # TODO Indirect jumps
                else:
                  pass

              if ins.address in self.known_ends or uncond_target:
                break


    def get_adrp_target(self, ins):
        text_section = self.exe.helper.get_section_by_name('.text')
        ss = text_section['sh_addr']
        ee = text_section['sh_addr'] + text_section['sh_size']

        target_reg = ins.operands[0].value.reg
        target = ins.operands[1].imm

        adr = ins.address + ins.size
        for i in range(10): # TODO set proper range
          try:
            next_ins = next(self.capstone_handle.disasm(self.doc.bytes_at(adr,15), adr, count=1))
            ops = next_ins.operands
            # TODO need more constraints +++
            if next_ins.mnemonic == "add" and (target_reg == ops[0].value.reg or target_reg == ops[1].value.reg):
                #print ("yes")
                target = ops[2].imm + target
                if ss <= target < ee:
                  # XXX XXX print ("adrp(", hex(ins.address), hex(target),") target in text**")
                  return ins.address, target, 1
                break
            elif "ldr" in next_ins.mnemonic and (target_reg == ops[0].value.reg or target_reg == ops[1].value.mem.base):
                #print ("yes2")
                target = ops[1].value.mem.disp + target # TODO  adr x1, [x3] case ?
                if ss <= target < ee:
                  # XXX XXX print ("adrp(", hex(ins.address), hex(target),") target in text**")
                  return ins.address, target, 1
                break
            elif "str" in next_ins.mnemonic and (target_reg == ops[0].value.reg or target_reg == ops[1].value.mem.base):
                break
          except StopIteration:
            # TODO write into log file
            # XXX XXX print ("StopIteration at", hex(next_ins.address),"when getting adrp(", hex(ins.address) ,") target")
            pass
          adr = adr + ins.size

        return ins.address, target, 0


# jg: XXX ****************
    def print_disasm_result(self):
      adr = self.first_adr
      adr &= ~0b1
      print ("start,end adr:", hex(adr), hex(self.last_adr))
      while adr <= self.last_adr:
        while self.doc.is_instruction(adr) or self.doc.is_instruction_body(adr):
          ins = next(self.capstone_handle.disasm(self.doc.bytes_at(adr,15), adr, count=1))
          if ins.address in self.doc.procedures:
            print ("\nStart function at",hex(ins.address))
          #print ("     ",hex(ins.address), ins.mnemonic)
          disassembler.print_instruction(ins)
          if ins.address in self.known_ends:
            print ("End function\n")
          adr += ins.size
        adr += ins.size


    def classify_adrp_targets(self):
        idx = 0
        for a, t, is_in_text in sorted(self.adrp_ins):
          if is_in_text:
            self.adrp_list.append((a, t))
            self.adrp_target_list.append((t, idx))
            idx += 1
        self.adrp_target_list.sort()
          

    def write_result(self, binary):
        print ("Found", len(self.adrp_list),"adrp instructions of which targets are in text section.")

        cur = os.getcwd()

        # Make a filename dir (if not exists) & change working directory
        if self.out_dir is None:
          result_dir = os.path.join("./output/", os.path.basename(binary.name))
          t = datetime.now()
          output_dir = t.strftime("%y")+t.strftime("%m")+t.strftime("%d")+"_"+t.strftime("%H")+t.strftime("%M")+t.strftime("%S")
          output_dir = os.path.join(result_dir, output_dir)
        else:
          #output_dir = os.path.join(os.path.join("./output/", self.out_dir), os.path.basename(binary.name))
          output_dir = os.path.join(self.out_dir, os.path.basename(binary.name))
        if not os.path.isdir(output_dir):
          os.makedirs(output_dir)
        os.chdir(output_dir)


        # Make result files (change file name rr)
        output_file = "adrp_info"
        #with open(os.path.abspath(output_file), 'w') as f:
        with open(output_file, 'w') as f:
          for a, t in self.adrp_list:
            if t == None:
              # XXX print ("Unknown adrp target found.")
              continue
            s = str(hex(a))[2:] + "\t" + str(hex(t))[2:] + "\t1\n" #TODO 1(code,not data)->analysis result
            # XXX print (s)
            f.write(s)

        shutil.copy(cur+"/input/"+os.path.basename(binary.name)+"/"+self.lst_f, "./")

        i = j = 0
        size1 = len(self.adrp_list)
        size2 = len(self.adrp_target_list)
        
        data_target_cnt = 0
        target_str = None
        is_code = 0
        not_code_target = []
        #code_sig = ["COLLAPSED FUNCTION", "sub_", "__unwind"]
        for line in fileinput.input(self.lst_f, inplace=True):
          addr = line.split()[0]

          if not target_str == None:
            if "COLLAPSED FUNCTION" in line or "sub"+target_str in line or "__unwind" in line or "bp-based frame" in line:
              is_code = 1
            if not target_str in addr:
              while j < size2 and str(hex(self.adrp_target_list[j][0]))[2:].upper() == target_str:
                sys.stdout.write("** Notice: ADRP "+str(is_code)+"_target_no"+str(self.adrp_target_list[j][1])+"\n")
                #print("\t\ttarget: ", hex(self.adrp_target_list[j][0])[2:].upper())
                j += 1
              if not is_code:
                data_target_cnt += 1
                not_code_target.append(target_str)

              target_str = None
              is_code = 0


          if i < size1 and str(hex(self.adrp_list[i][0]))[2:].upper() in addr: # first constraint first.
            sys.stdout.write("** Notice: ADRP instruction_no"+str(i)+"\n")
            #print("** Notice: ADRP instruction_"+str(i)+"\n")
            i += 1

          if j < size2 and str(hex(self.adrp_target_list[j][0]))[2:].upper() in addr:
            target_str = str(hex(self.adrp_target_list[j][0]))[2:].upper()
            if "COLLAPSED FUNCTION" in line or "sub"+target_str in line or "__unwind" in line:
              is_code = 1

          sys.stdout.write(line)
        fileinput.close()

        with open("adrp_data_target", 'w') as f:
          for a in not_code_target:
            f.write(a+"\n")

        return len(not_code_target), os.getcwd()


      
    


def loader_name(l):
    return l.__name__.split(".")[-1]

branch_instructions = {
    ARM64_INS_B,
    ARM64_INS_BR,
    ARM64_INS_BL,
    ARM64_INS_BLR,
    ARM64_INS_CBNZ,
    ARM64_INS_CBZ,
    ARM64_INS_TBNZ,
    ARM64_INS_TBZ,
    # ? what is the target of this
    ARM64_INS_RET
}

stop_instruction = {
    ARM64_INS_RET
}

conditional_branch_instructions = {
    ARM64_INS_CBNZ,
    ARM64_INS_CBZ,
    ARM64_INS_TBNZ,
    ARM64_INS_TBZ
}

call_instructions = {
    ARM64_INS_BL,
    ARM64_INS_BLR
}
