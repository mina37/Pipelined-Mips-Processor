module pc (output reg [31:0] current, input wire [31:0] next, input wire pcwrite, clk);
	
	always @ (posedge clk)
		begin
			if (pcwrite == 0)
				current = next;
		end
endmodule
		