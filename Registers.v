module Registers(Read_Reg1,Read_Reg2,Write_Reg,Write_Dat,Read_Dat1,Read_Dat2,Reg_Write)

input [4:0]
Read_Reg1,
Read_Reg2,
Write_Reg,

input [31:0]
Write_Dat;

input
Reg_Write;

output [31:0]
Read_Dat1,
Read_Dat2;

reg [4:0]
Read_Reg1,
Read_Reg2,
Write_Reg;

reg [31:0]
Write_Dat,
Read_Dat1,
Read_Dat2;

wire
Reg_Write;

reg [31:0] Register_file [31:0];


initial 
	begin
		