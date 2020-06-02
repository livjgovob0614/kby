import binascii
from queue import PriorityQueue

from capstone import *
#from capstone.x86 import *
from capstone.arm64_const import *

import disassembler
import API


class Analyzer():

    def __init__(self, loader, f):
        """ Analyze a file f using a user-specified loader. It will start from the
        procedures given by the loader, then try a recursive descent from there, using
        a priority queue for handling branches."""

        self.queue = PriorityQueue()
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

    def queue_address(self, priority, address):
        # Don't queue already decoded addresses
        if self.doc.is_data(address):
            self.queue.put((priority, address))

    def dequeue_address(self):
        return self.queue.get()[1]

    def analyze(self):
        for proc in self.doc.proc_to_analyze:
            print("Adding proc at address", hex(proc), "(found by loader)")
            self.doc.set_procedure(proc)
            self.queue_address(10, proc)
        self.doc.proc_to_analyze = None

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
        while not self.queue.empty():
            print ("1")
            adr = self.dequeue_address()

            # Don't disasm something if it has already been done (by something
            # with higher priority)
            if self.doc.is_instruction(
                    adr) or self.doc.is_instruction_body(adr):
                print ("1-2(is_instr)")
                continue

            try:
                print ("2")
                ins = next(
                    self.capstone_handle.disasm(
                        self.doc.bytes_at(
                            adr, 15), adr, count=1))
            except StopIteration:
                print ("2-1(stop)")
                continue

            # print_instruction(ins)
            # TODO check arm64 instr size!! and then change x86 page size, etc.
            print ("ins(address:", hex(adr), ", size:", ins.size)
            self.doc.set_instruction(adr, ins.size)
            if ins.id in conditional_branch_instructions or ins.id in branch_instructions:
                if ins.id in conditional_branch_instructions or ins.cc != ARM64_CC_AL:
                    # Add next instruction too
                    print("Adding", ins.mnemonic, "'s next to low priority")
                    self.queue.put((10, adr + ins.size))

                if ins.operands[0].type == ARM64_OP_IMM:
                    print("Adding", ins.mnemonic, "'s operand to high priority")
                    # %u????
                    print("--> ins.operands[0].imm: ", hex(ins.operands[0].imm))
                    self.queue.put((1, ins.operands[0].imm))
            else:
                print("Adding", ins.mnemonic, "'s next to low priority")
                if ins.id not in stop_instruction:
                    self.queue.put((1, adr + ins.size))

            # mark procedure
            if ins.id in call_instructions and ins.operands[
                    0].type == ARM64_OP_IMM:
                self.doc.set_procedure(ins.operands[0].imm)


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
