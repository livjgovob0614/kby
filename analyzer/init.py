import os
import sys

class Init():
  def __init__(self, in_f):

    f = open(in_f,"r")
    example_data  = f.readlines()
    f.close()
    func_data = []
    #text_data = []
    text_num = 0    

    for i in range(0,len(example_data)):
        if('__unwind' in example_data[i]):
            print(example_data[i][6:23])
            func_data = func_data + [example_data[i][6:23]+"\n"]
        elif('// starts' in example_data[i]):
            print(example_data[i][6:23])
            func_data = func_data + [example_data[i][6:23]+"\n"]


    fname = in_f[:-4]

    input_dir = os.path.join("./input/", os.path.basename(fname))
    if not os.path.isdir(input_dir):
      os.makedirs(input_dir)
    os.chdir(input_dir)


    f = open("funcInfo","w")
    for i in range(0,len(func_data)):
        f.write(func_data[i])
    f.close()
    print("\n\n\n\n\n")
 
    for i in range(0,len(example_data)):
        if('.text' in example_data[i] and(len(example_data[i])>23)):
            #text_data = text_data + [example_data[i]]
            text_num = text_num + 1

    text_data = [0]*text_num
    j = 0
    for i in range(0,len(example_data)):
        if('.text' in example_data[i] and(len(example_data[i])>23)):
           text_data[j] = example_data[i] 
           j = j +1



    f = open("funcText","w")
    for i in range(0,len(text_data)):
        f.write(text_data[i])
    f.close()


