module clk(output reg clock);
	always
		begin
			#5
			clock = ~clock;
		end
endmodule
	