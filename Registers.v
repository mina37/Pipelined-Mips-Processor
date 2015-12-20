module Registers(Read_Reg1,Read_Reg2,Write_Reg,Write_Dat,Read_Dat1,Read_Dat2,Reg_Write,Clk);

input [4:0]
Read_Reg1,
Read_Reg2,
Write_Reg;

input [31:0]
Write_Dat;
		  
input 
Clk,
Reg_Write;

output [31:0]
Read_Dat1,
Read_Dat2;

reg [31:0]
Read_Dat1,
Read_Dat2;

reg [31:0] Register_file [31:0];

initial 
	begin
	 	Register_file[0]<=0;
		Register_file[1]<=0; 
		Register_file[2]<=0;
		Register_file[3]<=0;
		Register_file[4]<=0;
		Register_file[5]<=0;
		Register_file[6]<=0; 
		Register_file[7]<=0;
		Register_file[8]<=0;
		Register_file[9]<=0;
		Register_file[10]<=0;
		Register_file[11]<=0; 
		Register_file[12]<=0;
		Register_file[13]<=0;
		Register_file[14]<=0;
		Register_file[15]<=0;
		Register_file[16]<=0; 
		Register_file[17]<=0;
		Register_file[18]<=0;
		Register_file[19]<=0;
		Register_file[20]<=0;
		Register_file[21]<=0; 
		Register_file[22]<=0;
		Register_file[23]<=0;
		Register_file[24]<=0;
		Register_file[25]<=0;
		Register_file[26]<=0; 
		Register_file[27]<=0;
		Register_file[28]<=0;
		Register_file[29]<=0;
		Register_file[30]<=0;
		Register_file[31]<=0;
		
	end
	
always @ (negedge Clk)
	begin
		Read_Dat1=Register_file[Read_Reg1];
		Read_Dat2=Register_file[Read_Reg2];
	end
	

always @(posedge Clk)
	begin
		if (Reg_Write)
			begin
				Register_file[Write_Reg]=Write_Dat;
			end
			
	end
	


endmodule	