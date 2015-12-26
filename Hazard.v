module hazard( pcw, s1w, mux, rs1, rt1, rt2, memr, clk);
	
	input [4:0] rs1;
	input [4:0] rt1;
	input [4:0] rt2;
	input memr;
	input clk;
	
	output pcw;
	output s1w;
	output mux;
	
	
	reg pcw;
	reg s1w;
	reg mux;
	
	wire [4:0] rs1;
	wire [4:0] rt1;
	wire [4:0] rt2;
	wire memr;
	wire clk;
	
	always @ (posedge clk)
		begin
			if (memr == 1 && (rt1 == rt2 || rs1 == rt1))
				begin
					pcw <= 1'b0;
					s1w <= 1'b0;
					mux <= 1'b0;
				end
			else
				begin
					pcw <= 1'b1;
					s1w <= 1'b1;
					mux <= 1'b1;
				end
		end
endmodule