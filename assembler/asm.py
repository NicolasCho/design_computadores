OpCode = { "NOP":"0", "LDA":"1", "SOMA":"2", "SUB":"3", "LDI":"4", "STA":"5",
           "JMP":"6", "JEQ":"7", "CEQ":"8", "JSR":"9", "RET":"10", "ANDOP":"11"}

lines, lineinfo, lineadr, labels = [], [], [], {}

import sys                                          
if len(sys.argv) < 3: print('USAGE: asm.py <sourcefile> <size of bit vector> [-s[<tag>]]'); exit(1)

try: f = open(sys.argv[1], 'r')                     # read in the source line WITHOUT #include function
except: print("ERROR: Can't find file \'" + sys.argv[1] + "\'."); exit(1)
while True:
    line = f.readline()
    if not line: break
    lines.append(line.strip())                      # store each line without leading/trailing whitespaces
f.close()

try: f = open("VHDL.txt", 'w')
except: print("ERROR: Can't find file \'VHDL.txt\'."); exit(1)


for i in range(0,len(lines)):
    line = lines[i]
    line = line.split(";",1)[0]
    for k,d in OpCode.items():
        line = line.replace(k, bin(int(d))) #Passa os minemonicos para o código binário

    if "@" in line:
        num = line.split("@",1)[1]
        line = line.split("@",1)[0]
        line += bin(int(num))
    elif "$" in line:
        num = line.split("$",1)[1]
        line = line.split("$",1)[0]
        line += bin(int(num))

    
    line = line.replace("0b", "")
    line = line.replace(" ", "")

    if len(line) > 0:
        for l in range(0, int(sys.argv[2])-len(line)):
            line = "0"+line

        f.write("tmp("+str(i)+") := "+'"'+line+'"'+";\n")


    