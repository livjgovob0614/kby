#!/usr/bin/env python3

"""
    Main:
        Loading:
        * Set executable from CLI
        * Launch all the loaders accept_file
        * Present a list of matching loaders and let the user choose

        Usage:
        * Disass with capstone from entry point
        * Follow jumps & call for recursive descent (check for library functions before trying?)
        * Eval() scripts to modify/comment/... the binary

        GUI:
        * Use PyQT/Pyside to make a basic GUI?
"""
import os
import sys
from importlib import import_module
from glob import glob

from analyzer.analyzer import Analyzer
from analyzer.init import Init
from capstone import *

import API
from formats.elf_executable import *


def main(argv):
    if len(argv) <= 1:
        raise Exception("Usage: python3 main.py binary f_info")

    Init("./lst/"+os.path.basename(argv[1])+".lst")


if __name__ == '__main__':
    main(sys.argv)
