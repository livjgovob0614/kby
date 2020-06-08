#!/usr/bin/env python3
import os
import sys

from analyzer.init import Init


def main(argv):
    if len(argv) <= 1:
        raise Exception("Usage: python3 main.py binary f_info")

    Init("./lst/"+os.path.basename(argv[1])+".lst")


if __name__ == '__main__':
    main(sys.argv)
