OpCode = { "NOP":"0000", "LDA":"0001", "SOMA":"0010", "SUB":"0011", "LDI":"0100", "STA":"0101",
           "JMP":"0110", "JEQ":"0111", "CEQ":"1000", "JSR":"1001", "RET":"1010", "ANDOP":"1011"}

Regs = {"RegA":'"00"', "RegB":'"01"', "RegC":'"10"', "RegD":'"11"'}

MemoryMap = {"LEDR0-7": "@256", "LEDR8":"@257", "LEDR9":"@258", "HEX0":"@288", "HEX1":"@289", "HEX2":"@290",
             "HEX3":"@291", "HEX4":"@292", "HEX5":"@293", "SW0_7":"@320", "SW8":"@321", "SW9":"@322", "CLR-KEY0":"@511",
            "KEY0":"@352", "KEY1":"@353", "KEY2":"@354", "KEY3":"@355", "FPGA_RESET":"@356"}


import sys                                          

def troca_memory_map(arq_leitura, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]
        for k,d in MemoryMap.items():
            line = line.replace(k, d) #Passa os minemonicos para o código binário
        f.write(line+"\n")
    f.close()

def troca_reg(arq_leitura, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]
        if len(line.split(" ")) == 4:
            for k,d in Regs.items():
                line = line.replace(k, d) #Passa os minemonicos para o código binário
        else:
            l = line.split(" ")
            if len(l) == 3:
                line = l[0]+' "00" '+l[1]+" "+l[2]
            elif l[0] == "NOP" and l[0] == "RET":
                line = l[0]+' "00" '
        f.write(line+"\n")
    f.close()

def troca_labels(arq_leitura, labels, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]

        if line.split(" ")[0] in OpCode.keys():
            for k,d in labels.items():
                line = line.replace(k, d) #Passa os minemonicos para o código binário
        else:
            line = ""
        f.write(line+"\n")
    f.close()

def troca_numeros(arq_leitura, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]
        if "@" in line:
            num = line.split("@",1)[1]
            line = line.split("@",1)[0]
            if int(num)-256 >= 0:
                line += "'1' "
                if len(hex(int(num)-256)) < 4: 
                    line += ('x"'+"0"+hex(int(num)-256)+'"')
                else:
                    line += ('x"'+hex(int(num)-256)+'"')
                    
            else:
                line += "'0' "
                if len(hex(int(num))) < 4: 
                    line += ('x"'+"0"+hex(int(num))+'"')
                else:
                    line += ('x"'+hex(int(num))+'"')

        elif "$" in line:
            num = line.split("$",1)[1]
            line = line.split("$",1)[0]
            if int(num)-256 >= 0:
                line += "'1' "
                if len(hex(int(num)-256)) < 4: 
                    line += ('x"'+"0"+hex(int(num)-256)+'"')
                else:
                    line += ('x"'+hex(int(num)-256)+'"')
            else:
                line += "'0' "
                if len(hex(int(num))) < 4: 
                    line += ('x"'+"0"+hex(int(num))+'"')
                else:
                    line += ('x"'+hex(int(num))+'"')
        elif "NOP" in line:
            line = "NOP '0' "+'x"00"'
        elif "RET" in line:
            line = "RET '0' "+'x"00"'

        line = line.replace("0x", "")
        
        f.write(line+"\n")
    f.close()

def remove_comentarios(arq_leitura, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]
        line = line.split(";",1)[0] #retira os comentarios
        f.write(line+"\n")
    f.close()

def get_len(key):
    return len(key[0])

def acha_labels(arq_leitura):
    lines = linhas_arquivo(arq_leitura)
    labels = {}
    for i in range(0, len(lines)):
        line = lines[i]

        if line.split(" ")[0] not in OpCode:
            if line.split(" ")[0] != "":
                labels[line.split(" ")[0]] = "@"+str(i)  

    # sorting using sort()
    # external to render logic 
    test_dict_list = list(labels.items())
    test_dict_list.sort(key = get_len)
    
    # reordering to dictionary
    res = {ele[0] : ele[1]  for ele in test_dict_list} 
    return dict(reversed(list(res.items())))

def assembly_para_vhdl(arq_leitura, arquivo):
    lines = linhas_arquivo(arq_leitura)
    f = open(arquivo, 'w')
    for i in range(0,len(lines)):
        line = lines[i]
        if line != "":
            line = line.replace(" ", "&")
            f.write("tmp("+str(i)+") := "+line+";\n")
    f.close()

def linhas_arquivo(arquivo):
    lines = []
    try: f = open(arquivo, 'r')                     
    except: print("ERROR: Can't find file \'" + sys.argv[1] + "\'."); exit(1)
    while True:
        line = f.readline()
        if not line: break
        lines.append(line.strip())                      # store each line without leading/trailing whitespaces
    f.close()
    return lines

def main():

    if len(sys.argv) < 2: print('USAGE: asm.py <sourcefile>'); exit(1)



    labels = acha_labels(sys.argv[1])
    remove_comentarios(sys.argv[1], "no_comments.txt")
    troca_memory_map("no_comments.txt", "memory_map.txt")
    troca_labels("memory_map.txt", labels, "labels.txt")
    troca_numeros("labels.txt", "numeros.txt")
    troca_reg("numeros.txt", "reg.txt")
    assembly_para_vhdl("reg.txt", "VHDL.txt")

if __name__ == "__main__":
    main()