import sys, os, glob
import subprocess
from datetime import datetime

def main(argv):
  t = datetime.now()
  out_dir = t.strftime("%y")+t.strftime("%m")+t.strftime("%d")+"_"+t.strftime("%H")+t.strftime("%M")+t.strftime("%S")


  out_dir = os.path.join("./output/", out_dir)
  if os.path.isdir(out_dir):
    printf("ERROR: output dir already exists.")
    sys.exit()
  os.makedirs(out_dir)

  log_f = os.path.join(out_dir, "log")
  with open(log_f, 'w') as log:
    file_list = glob.glob('/home/donghoon/so/*.so')
    #file_list = glob.glob('/home/jg/test/so/*.so')

    for idx, f in enumerate(file_list):
      print ("\n\nStart Disassembly of "+f+":")
      exe_cmd = ["python3","main.py",f,out_dir]
      #os.system(exe_cmd)
      #fd_popen = subprocess.Popen(exe_cmd, stdout=subprocess.PIPE).stdout
      fd_popen = subprocess.Popen(exe_cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT).stdout
      ret = fd_popen.read()
      fd_popen.close()

      log.write("\n\nStart Disassembly of "+f+":")
      log.write(str(ret))
    

if __name__ == '__main__':
  main(sys.argv)
