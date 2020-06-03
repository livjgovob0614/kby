import os
from queue import Queue

from capstone import *
from capstone.arm64_const import *

import disassembler
import API
from formats.constructs import *
from formats.enums import *

import binascii

_ADRP_TYPES = {
  "else": 0,
  "text_sec": 1,
  "data_sec": 2
}

class Analyzer():

    def __init__(self, loader, exe, f, function_info=None):
        # jg:
        self.exe = exe
        self.f_info = function_info
        self.first_adr = 0x999999
        self.last_adr = 0x0
        self.adrp_ins = []
        self.adrp_list = []

        """ Analyze a file f using a user-specified loader. It will start from the
        procedures given by the loader, then try a recursive descent from there
        """

        self.queue = Queue()
        self.doc = API.Document()
        loader.load_file(f, self.doc)

        self.capstone_handle = disassembler.setup_capstone(self.doc)

        print("Successfully loaded", f.name,
            "using loader", loader_name(loader))
        print("Analyzing...")
        self.analyze()
        print("Analysis complete")

        self.print_disasm_result()

        # TODO
        self.classify_adrp_targets()


    def analyze(self):
        # TODO
        self.known_ends = []
        self.starts = []
        for addr in self.doc.proc_to_analyze:
            print("Adding proc at address", hex(addr), "(found by loader), type:",type(addr))
            self.doc.set_procedure(addr) # TODO ?
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
        print("Used " +
              str(len(self.doc.address_space.pages)) +
              " document pages for analysis")


    def get_sym_function_info(self, sym):
        for symbol in sym.iter_symbols():
          if symbol['st_info']['type'] == 'STT_FUNC' and symbol['st_shndx'] != 'SHN_UNDEF':
            addr = symbol['st_value']
            fname = symbol.name
            print ("Adding funcion", fname, "from", sym.name ,"at", hex(addr))
            self.queue.put(addr)
            self.starts.append(addr)
            # TODO why should symbol have size when adding function?
            if symbol['st_size']:
              self.known_ends.append(symbol['st_value']+symbol['st_size']-0x4)
              print ("   size", symbol['st_size'])


    def get_text_function_info(self):
        with open(self.f_info, 'r') as f:
          for i, line in enumerate(f):
            target = int(line, 16)
            if i & 1:
              self.known_ends.append(hex(target))
            else:
              print ("Adding funcion from", os.path.basename(f.name) ,"at", hex(target))
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
                self.adrp_ins.append(self.get_adrp_target(ins)) #TODO
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
          next_ins = next(self.capstone_handle.disasm(self.doc.bytes_at(adr,15), adr, count=1))
          ops = next_ins.operands
          # TODO need more constraints +++
          if next_ins.mnemonic == "add" and (target_reg == ops[0].value.reg or target_reg == ops[1].value.reg):
              #print ("yes")
              target = ops[2].imm + target
              if ss <= target < ee:
                print ("adrp(", hex(ins.address), hex(target),") target in text**")
                return ins.address, target, 1
              break
          elif next_ins.mnemonic == "ldr" and (target_reg == ops[0].value.reg or target_reg == ops[1].value.mem.base):
              #print ("yes2")
              target = ops[1].value.mem.disp + target
              if ss <= target < ee:
                print ("adrp(", hex(ins.address), hex(target),") target in text**")
                return ins.address, target, 1
              break
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
          

    def print_result(self, binary):
        # Make a filename dir (if not exists) & change working directory
        result_dir = os.path.join("./result/", os.path.basename(binary.name))
        if not os.path.isdir(result_dir):
          os.mkdir(result_dir)
        os.chdir(result_dir)

        # Make a time dir (always -)
        t = datetime.now()
        output_dir = "{}{}{}_{}{}{}".format(t.year, t.month, t.day, t.hour, t.minute, t.second)
        if os.path.isdir(output_dir):
          print ("!! Output directory already exists. !!")
          sys.exit()
        os.chdir(output_dir)

        # Make result file (change file name rr)
        output_file = "textsection_adrp_info"
        with open(output_file, 'w') as f:
          for a, t in adrp_list:
            s = str(hex(a))[2:] + "\t" + str(hex(t))[2:] + "\t1" #TODO 1(code,not data)->analysis result
            f.write(s)

        # Make a new IDA file (with adrp info)
        i = j = 0
        size1 = len(adrp_list)
        size2 = len(adrp_target_list)
        for line in fileinput.input(argv[3], inplace=True) # TODO argv[3]
          if i < size1 and str(hex(adrp_list[i][0]))[2:] in line: # first constraint first.
            sys.stdout.write("** Notice: ADRP instruction_"+str(i)+"\n")
            i += 1
          if j < size2 and str(hex(adrp_target_list[j][0]))[2:] in line:
            sys.stdout.write("** Notice: ADRP target_"+str(adrp_target_list[j][1])+"\n")
            j += 1
          sys.stdout.write(line)



          
      
    


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
