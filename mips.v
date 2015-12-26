module MIPS();
	
reg [0:63] IF_ID;

reg [31:0] Address,
Instruction,
Address_Plus1;

reg clk;

mux Register_Dest();
mux Jump_And_Link_Read();
mux ALU_Source();
mux Memory_To_Register();
mux Jump_And_Link_Write();
mux PC_Source();
mux Jump();


Plus_One PC_Plus_Four(Address,Address_Plus1,clk);

instructionsMemory Instruction_Memory(Address,clk,Instruction);

Registers Register_File(Instruction[25:21],Instruction[20:16],Write_Reg/**/,Write_Dat/**/,Read_Dat1,Read_Dat2,Reg_Write,clk);

always #5 clk=~clk;
always @(posedge clk)
	IF_ID={Instruction,Address_Plus1}; 
initial Address=-1;

endmodule