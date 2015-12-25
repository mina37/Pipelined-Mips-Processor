module hazard( PCwrite, IFIDwrite, Ctrl_IDEX_mux, rs1, rt1, rt2, MEMwrite, clk);
	
	input [4:0] rs1;
	input [4:0] rt1;
	input [4:0] rt2;
	input MEMwrite;
	input clk;
	
	output PCwrite;
	output IFIDwrite;
	output Ctrl_IDEX_mux;
	
	
	reg PCwrite;
	reg IFIDwrite;
	reg Ctrl_IDEX_mux;
	
	wire [4:0] rs1;
	wire [4:0] rt1;
	wire [4:0] rt2;
	wire MEMwrite;
	wire clk;
	
	always @ (posedge clk)
		begin
			if (MEMwrite == 1 && (rt1 == rt2 || rs1 == rt1))
				begin
					PCwrite <= 1'b0;
					IFIDwrite <= 1'b0;
					Ctrl_IDEX_mux <= 1'b0;
				end
			else
				begin
					PCwrite <= 1'b1;
					IFIDwrite <= 1'b1;
					Ctrl_IDEX_mux <= 1'b1;
				end
		end
endmodule