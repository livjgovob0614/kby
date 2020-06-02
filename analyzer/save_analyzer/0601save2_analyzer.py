import binascii
from queue import Queue

from capstone import *
#from capstone.x86 import *
from capstone.arm64_const import *

import disassembler
import API
from formats.constructs import *
from formats.enums import *
#from base_analyzer import BaseAnalyzer

class Analyzer():

    def __init__(self, loader, exe, f):
        self.exe = exe

        """ Analyze a file f using a user-specified loader. It will start from the
        procedures given by the loader, then try a recursive descent from there
        """

        self.queue = Queue()
        self.doc = API.Document()
        loader.load_file(f, self.doc)

        self.capstone_handle = disassembler.setup_capstone(self.doc)

        print(
            "Successfully loaded",
            f.name,
            "using loader",
            loader_name(loader))
        print("Analyzing...")
        self.analyze()
        print("Analysis complete")

        print("Found", len(self.doc.procedures), "procedures:")

        #print("Skipping printing of procedures")
        for proc in sorted(self.doc.procedures):
           print("Disassembly of", hex(proc))
           disassembler.print_disassemble_proc(self.doc, self.capstone_handle, proc)


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

# test ####################### jg
        """
        section = self.exe.helper.get_section_by_name('.symtab')
        if section is None:
          print ("jg: .symtab is None")
          section = self.exe.helper.get_section_by_name('.dynsym')
        if section is not None:
          print ("jg: .dynsym is not None")
          for symbol in section.iter_symbols():
            print ("name,addr(low):",symbol.name, hex(symbol.entry.st_value))
        """
        
        symtab = self.exe.helper.get_section_by_name('.symtab')
        if symtab:
          for symbol in symtab.iter_symbols():
            if symbol['st_info']['type'] == 'STT_FUNC' and symbol['st_shndx'] != 'SHN_UNDEF':
              addr = symbol['st_value']
              fname = symbol.name
              print ("Adding funcion", fname, "from .symtab at", hex(addr))
              self.queue.put(addr)
              print ("tttype:",type(addr),"symtype:",type(symbol))
              self.starts.append(addr)
              # TODO why should symbol have size when adding function?
              if symbol['st_size']:
                self.known_ends.append(symbol['st_size'])
                print ("   size", symbol['st_size'])
        
        dynsym = self.exe.helper.get_section_by_name('.dynsym')
        if dynsym:
          for symbol in dynsym.iter_symbols():
            if symbol['st_info']['type'] == 'STT_FUNC' and symbol['st_shndx'] != 'SHN_UNDEF':
              addr = symbol['st_value']
              fname = symbol.name
              print ("Adding X funcion", fname, "from .dynsym at", hex(addr))

        self.heuristic_procedures()

        self.recursive_descent()
        print("Used " +
              str(len(self.doc.address_space.pages)) +
              " document pages for analysis")

    def heuristic_procedures(self):
        # TODO: mark procedures found by searching for "push esb, mov ebp esp"
        # x86: search for 55 89 E5
        pass

    def recursive_descent(self):
        """ Basic recursive descent using priority queues for branches"""
        uncond_target = 0
        while not self.queue.empty() or uncond_target:
            print ("****************************\nStarting at new disasm_point!")
            # Is it OK? or priority queue?
            # uncond br > cond  muzogun? m.m hmm....
            if uncond_target:
              start_adr = uncond_target
              uncond_target = 0
            else:
              start_adr = self.queue.get()
            cur_section = self.exe.section_containing_vaddr(start_adr)
            #print ("cur_section:", hex(cur_section.vaddr))
            # TODO print cur section
            section_end_vaddr = cur_section.vaddr + cur_section.size
            # TODO end_adr = min([a for a in bb_disas)
            end_adr = section_end_vaddr
            end_adr = min([addr for addr in self.starts if addr > start_adr] or [section_end_vaddr])
            #print ("cur_section_end:", hex(end_adr))

            start_adr &= ~0b1
            code = self.exe.get_binary_vaddr_range(start_adr, end_adr)

            # TODO
            #for ins in self.capstone_handle.disasm(self.doc.bytes_at(adr, 15), adr):
            ins_list = self.capstone_handle.disasm(code, start_adr)
            for ins in ins_list:
              print ("ins_type:", type(ins),"add_type:",type(ins.address))
              if self.doc.is_instruction(ins.address) or self.doc.is_instruction_body(ins.address):
                continue

              if not ins.id: # = ARM64_INS_INVALID ??
                break
              # TODO  what if ins.address in kwnown_ends but ins.id = br?
              #       so move this to loop_end
              #elif ins.address in known_ends:
              #  break

              # TODO : Handling nop instruction

              # print_instruction(ins)
              # TODO check arm64 instr size!! and then change x86 page size, etc.
              print ("     ",hex(ins.address), ins.mnemonic)
              self.doc.set_instruction(ins.address, ins.size)

              if ins.id in stop_instruction:
                break


### test jg:
# TODO store [adrp address & target address]
              if ins.mnemonic.startswith('adrp'):
                print (" ADRP!")
                for op in ins.operands:
                  if op.type == CS_OP_IMM:
                    print ("IMM:", hex(op.imm))
                  elif op.type == CS_OP_MEM:
                    print ("MEM(base, index, disp):", op.mem.base, op.mem.index, op.mem.disp)
                  elif op.type == CS_OP_FP:
                    print ("FP")
                  elif op.type == CS_OP_REG:
                    print ("REG")
                  else:
                    print ("else")

              # Check instruction type
              if ins.id in branch_instructions:
                if ins.operands[0].type == ARM64_OP_IMM:
                  #print("check -1:", ins.operands[-1].type == ARM64_OP_IMM, ", 0:", ins.operands[0].type == ARM64_OP_IMM)
                  # %u????
                  if ins.id in conditional_branch_instructions or (ins.cc != ARM64_CC_AL and ins.cc):
                    self.queue.put(ins.operands[0].imm)
                    print("Adding br target :", hex(ins.operands[0].imm))
                  # what if return?  
                  else:
                    if ins.id in call_instructions:
                      self.doc.set_procedure(ins.operands[0].imm)
                      self.queue.put(next(ins_list))
                      print ("Test: cur:",hex(ins.address),",nnext:",hex(next(ins_list)))

                    uncond_target = ins.operands[0].imm
                    print("Go to br target -->", hex(ins.operands[0].imm))
                    # break (with below)


              # mark procedure
# XXX XXX in our research
              if ins.id in call_instructions and ins.operands[
                      0].type == ARM64_OP_IMM:
                self.doc.set_procedure(ins.operands[0].imm)

              if ins.address in self.known_ends or uncond_target:
                break


def loader_name(l):
    return l.__name__.split(".")[-1]

# TODO: add same groups for ARM/X86_64/...
branch_instructions = {
    #X86_INS_LJMP,
    #X86_INS_JMP
    ARM64_INS_B,
    ARM64_INS_BR,
    ARM64_INS_BL,
    ARM64_INS_BLR,
    ARM64_INS_CBNZ,
    ARM64_INS_CBZ,
    ARM64_INS_TBNZ,
    ARM64_INS_TBZ,
    # ? what is target
    ARM64_INS_RET
}

stop_instruction = {
    # TODO: uncertain stop instr ? (opt2)
    ARM64_INS_RET
}

conditional_branch_instructions = {
    ARM64_INS_CBNZ,
    ARM64_INS_CBZ,
    ARM64_INS_TBNZ,
    ARM64_INS_TBZ
    # why call = cond br???????
    #X86_INS_CALL,
    #X86_INS_LCALL,
}

call_instructions = {
    ARM64_INS_BL,
    ARM64_INS_BLR
}
'''
    def queue_address(self, address):
        # Don't queue already decoded addresses
        if self.doc.is_data(address):
            self.queue.put(address)

adr+adr.size: next instr
    def dequeue_address(self):
        return self.queue.get()
'''
