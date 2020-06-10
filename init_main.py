#!/usr/bin/env python3
import os
import sys

from analyzer.init import Init


def main(argv):
    if len(argv) < 2:
        raise Exception("Usage: python3 main.py filename (mode)")

    lst_file = "lst/"+os.path.basename(argv[1])+".lst"
    if len(argv) >= 3:
      lst_file = "/home/donghoon/"+lst_file
      #lst_file = "/home/jg/test/"+lst_file
      if not os.path.isfile(lst_file):
        print ("Lst file " + lst_file + " does not exist.")
        sys.exit()
      Init(lst_file)
    else:
      if not os.path.isfile(lst_file):
        print ("Lst file " + lst_file + " does not exist.")
        sys.exit()
      Init(lst_file)

    print ("Successfully generated input files")


if __name__ == '__main__':
    main(sys.argv)
