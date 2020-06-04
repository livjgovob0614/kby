import os
import sys
import fileinput
"""
check = 0
for line in fileinput.input('./test.txt', inplace=True):
  if '0005a' in line: # adrp / taget case
    sys.stdout.write("ADRP target_0001\n")
    check = 1
  sys.stdout.write(line)
  if check:
    break
"""

"""
i = j = 5
print (i, j)

li = [(1,2), (3,4)]
print (li[1][1])
print (len(li))

if 2 < len(li) and li[3]:
  print ("?")


li2 = [98, 631]
print (str(hex(li2[0]))[2:])

path = os.path.join("./", 'test')
if not os.path.isdir(path):
  os.mkdir(path)

li3 = [16, 32]
i = 0
print (":::", str(hex(li3[i]))[2:])
for line in fileinput.input("./test.txt", inplace=True):
	if i < len(li3) and str(hex(li3[i]))[2:] in line: # first constraint first.
		sys.stdout.write("** Notice: ADRP instruction_"+str(i)+"\n")
		i += 1
	sys.stdout.write(line)
"""


with open("test", 'r') as f:
  for line in f:
    target = int(line,16)
    print (target)
    print (hex(target))
