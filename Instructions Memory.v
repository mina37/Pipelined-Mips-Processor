module instructionsMemory ( address , clk , instruction );
input clk ;
input [31:0] address;
output [31:0] instruction;
reg [31:0] instruction;
reg [31:0] InstructionMemory [ 2047:0];	 
integer i;
initial 
begin
	instruction <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;	 
	for ( i= 0 ; i <= 2047 ; i++ ) 
			begin
			InstructionMemory [ i ] <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; 
			end
	$readmemb ( "D:/D:\Active-HDL\Active-HDL Projects\instructions_memory\InstructionsMemory.txt " , InstructionMemory); 
end
always @ ( posedge clk)
begin 
instruction = InstructionMemory[address]; 
$display ( instruction); //------------------testing	
$display ( InstructionMemory[0]); //------------------testing	
$display ( InstructionMemory[1]); //------------------testing
$display ( InstructionMemory[590]); //------------------testing
end

endmodule