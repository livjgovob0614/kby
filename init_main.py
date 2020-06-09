#!/usr/bin/env python3
import os
import sys

from analyzer.init import Init


def main(argv):
    if len(argv) < 2:
        raise Exception("Usage: python3 main.py filename (mode)")

    if len(argv) >= 3:
      Init("/home/donghoon/lst/"+os.path.basename(argv[1])+".lst")
      #Init("/home/jg/test/lst/"+os.path.basename(argv[1])+".lst")
    else:
      Init("./lst/"+os.path.basename(argv[1])+".lst")


if __name__ == '__main__':
    main(sys.argv)
