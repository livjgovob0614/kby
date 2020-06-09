import sys, os, glob
from datetime import datetime

def main(argv):
  t = datetime.now()
  output_dir = t.strftime("%y")+t.strftime("%m")+t.strftime("%d")+"_"+t.strftime("%H")+t.strftime("%M")+t.strftime("%S")

  file_list = glob.glob('/home/donghoon/so/*.so')
  #file_list = glob.glob('/home/jg/test/so/*.so')
  for f in file_list:
    print ("\n\nStarting Disassembly of "+f+":")
    exe_cmd = "python3 main.py "+f+" "+output_dir
    os.system(exe_cmd)


if __name__ == '__main__':
  main(sys.argv)
