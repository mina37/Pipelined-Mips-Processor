module Plus_Four(In1,Out1,clk);
	
	input [31:0] In1;
	input clk;
	output[31:0] Out1;
	
	reg [31:0] Out1;
	
	always @ (posedge clk)
		Out1=In1+4;
endmodule

