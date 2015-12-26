def op2bin (str):
    if str == "$zero": return "00000"
    elif str == "$at": return "00001"
    elif str == "$v0": return "00010"
    elif str == "$v1": return "00011"
    elif str == "$a0": return "00100"
    elif str == "$a1": return "00101"
    elif str == "$a2": return "00110"
    elif str == "$a3": return "00111"
    elif str == "$t0": return "01000"
    elif str == "$t1": return "01001"
    elif str == "$t2": return "01010"
    elif str == "$t3": return "01011"
    elif str == "$t4": return "01100"
    elif str == "$t5": return "01101"
    elif str == "$t6": return "01110"
    elif str == "$t7": return "01111"
    elif str == "$s0": return "10000"
    elif str == "$s1": return "10001"
    elif str == "$s2": return "10010"
    elif str == "$s3": return "10011"
    elif str == "$s4": return "10100"
    elif str == "$s5": return "10101"
    elif str == "$s6": return "10110"
    elif str == "$s7": return "10111"
    elif str == "$t8": return "11000"
    elif str == "$t9": return "11001"
    elif str == "$k0": return "11010"
    elif str == "$k1": return "11011"
    elif str == "$gp": return "11100"
    elif str == "$sp": return "11101"
    elif str == "$fp": return "11110"
    elif str == "$ra": return "11111"

def shamt2bin(str):
	constant = int(str)
	return '{0:05b}'.format(constant)

def imm2bin(str):
    constant = int(str)
    return '{0:016b}'.format(constant)

def jump2bin(str):
    constant = int(str)
    return '{0:026b}'.format(constant)

 


def fun2bin(str, op1, op2, op3):
    if str == "add": return "000000" + op2bin(op2) + op2bin(op3) + op2bin(op1) + "00000" + "100000"
    elif str == "addi": return "001000" + op2bin(op2) + op2bin(op1) + imm2bin(op3)
    elif str == "lw": return "100011" + op2bin(op3) + op2bin(op1) + imm2bin(op2)
    elif str == "sw": return "101011" + op2bin(op3) + op2bin(op1) + imm2bin(op2)
    elif str == "sll": return "000000" + "00000" + op2bin(op2) + op2bin(op1) + shamt2bin(op3) + "000000"
    elif str == "and": return "000000" + op2bin(op2) + op2bin(op3) + op2bin(op1) + "00000" + "100100"
    elif str == "andi": return "001100" + op2bin(op2) + op2bin(op1) + imm2bin(op3)
    elif str == "nor": return "000000" + op2bin(op2) + op2bin(op3) + op2bin(op1) + "00000" + "100111"
    elif str == "bew": return "000100" + op2bin(op2) + op2bin(op1) + imm2bin(op3)
    elif str == "jal": return "000011" + jump2bin(op1)
    elif str == "jr": return "000000" + op2bin(op1) + "00000" + "00000" + "00000" + "001000"
    elif str == "slt": return "000000" + op2bin(op2) + op2bin(op3) + op2bin(op1) + "00000" + "101010"
    else: return "Invalid Instruction"


program = open("program.txt", "a")
print ("Binary code is being saved to " + program.name)
while True:
    line = input("Enter assembly line of code, or enter 'stop' to terminate: ");
    if line == "stop":
	    break
    subline = line.split()
    print ("")
    binaryop1 = op2bin( subline[1] )
    binaryop2 = op2bin( subline[2] )
    binaryop3 = op2bin( subline[3] )
    binaryfinal = fun2bin(subline[0], subline[1], subline[2], subline[3])
    print (binaryfinal +"\n")
    program.write(line + "\t" + binaryfinal + "\n")	
program.close()
