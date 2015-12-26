module instructionsMemory ( address , clk , instruction );
input clk ;
input [31:0] address;
output [31:0] instruction;
reg [31:0] instruction;
reg [31:0] InstructionMemory [ 0:2047];	 

initial 
	begin

	instruction <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;	
	$readmemb ( "ThisIsInstructionMemTesting.txt " , InstructionMemory); 
// file found in ( modelsim\examples)
// or file found in ( Active-HDL\Active-HDL Projects\instructions_memory\instructions memory\src )
	end

always @ ( posedge clk)
	begin 

instruction = InstructionMemory[address]; 

//$display ( instruction); ----------------------------------------testing	
//$display ( InstructionMemory[0]); -------------------------------testing	
//$display ( InstructionMemory[1]); -------------------------------testing
//$display ( InstructionMemory[590]); -----------------------------testing

end

endmodule
