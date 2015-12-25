module Adder32(In1,In2,Out1,clk);
	
	input [31:0] In1,In2;
	input clk;
	output[31:0] Out1;
	
	reg [31:0] Out1;
	
	always @ (posedge clk)
		Out1=In1+In2;
endmodule