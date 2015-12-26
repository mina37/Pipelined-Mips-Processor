//-----------------------------------------------------------------------------
//
// Title       : MEM_WB
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\MEM_WB.v
// Generated   : Thu Dec 24 19:57:46 2015
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {MEM_WB}}
module MEM_WB (
	input [31:0] ALU_res_in,
	output reg [31:0] ALU_res_out,
	input [31:0] mem_word_in,
	output reg [31:0] mem_word_out,
	input [4:0] rs_rt_in,
	output reg [4:0] rs_rt_out,
	input wb_src_in,
	output reg wb_src_out,
	input wb_write_in,
	output reg wb_write_out,
	input clk);
	
	always @(posedge clk)
		begin
			ALU_res_out<=ALU_res_in;
			mem_word_out<=mem_word_in;
			rs_rt_out<=rs_rt_in;
			wb_src_out<=wb_src_in;
			wb_write_out<=wb_write_in;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
