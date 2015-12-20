module Sign_Extend(Input1,Output1);
input[15:0]
Input1;

output [31:0]
Output1;

reg [31:0]
Output1;
reg clk=0;
always 
	#5 clk = ~ clk;
always @(posedge clk)
	begin		
		if(Input1[15]==0)
			Output1= Input1 & 32'b0000_0000_0000_0000_1111_1111_1111_1111;
		else
			Output1= Input1 | ((16'b1111111111111111)<<16); 
		
	end
endmodule
	