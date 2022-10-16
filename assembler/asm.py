OpCode = { "NOP":"0000", "LDA":"0001", "SOMA":"0010", "SUB":"0011", "LDI":"0100", "STA":"0101",
           "JMP":"0110", "JEQ":"0111", "CEQ":"1000", "JSR":"1001", "RET":"1010", "ANDOP":"1011"}

# MemoryMap = {"RAM":range(0,63), "LEDR0-7": 256, "LEDR8":257, "LEDR9":258, "HEX:0":288, "HEX1":289, "HEX2":290,
#              "HEX3":291, "HEX4":292, "HEX5":293, "SW0-7":320, "SW8":321, "SW9":322, "KEY0":352, "KEY1":353, 
#              "KEY2":354, "KEY3":355, "FPGA_RESET":356, "CLR-KEY1":510, "CLR-KEY2":511}

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
        line = line.replace(k, d) #Passa os minemonicos para o código binário

    # for k,d in MemoryMap.items():
    #     line = line.replace(k, bin(int(d))) #Passa os minemonicos para o código binário

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
            line = line[:4]+"0"+line[4:]
        f.write("tmp("+str(i)+") := "+'"'+line+'"'+";\n")


    