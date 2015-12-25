module PC_mux(output reg [31:0] address, input wire [31:0] branch,jump,normal, input reg [1:0] sel);
	
	always
		begin
			if ( sel == 2'b00)