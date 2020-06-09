from datetime import datetime

t = datetime.now()
#output_dir = "{:%y}{:%m}{:%d}_{:%H}{:%M}{:%S}".format(t.year, t.month, t.day, t.hour, t.minute, t.second)
#output_dir = "{%y}{%m}{%d}_{%H}{%M}{%S}".format(t.year, t.month, t.day, t.hour, t.minute, t.second)
#output_dir = "{:%y:%m:%d:%H:%M:%S}".format(t.year, t.month, t.day, t.hour, t.minute, t.second)
output_dir = t.strftime("%y")+t.strftime("%m")+t.strftime("%d")+"_"+t.strftime("%H")+t.strftime("%M")+t.strftime("%S")
print (output_dir)
