//-----------------------------------------------------------------------------
//
// Title       : ID_EX
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\ID_EX.v
// Generated   : Thu Dec 24 17:10:44 2015
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
//{module {ID_EX}}
module ID_EX (
	input [31:0] PC_in,
	output reg [31:0] PC_out,
	input [31:0] register1_in,
	output reg [31:0] register1_out,
	input [31:0] register2_in,
	output reg [31:0] register2_out,
	input [31:0] sign_extend_in,
	output reg [31:0] sign_extend_out,
	input [4:0] rt_in,
	output reg [4:0] rt_out,
	input [4:0]rd_in,
	output reg [4:0] rd_out,
	input wb_src_in,
	output reg wb_src_out,
	input wb_write_in,
	output reg wb_write_out,
	input mem_read_in,
	output reg mem_read_out,
	input mem_write_in,
	output reg mem_write_out,
	input jump_in,
	output reg jump_out,
	input [1:0] ex_ALUop_in,
	output reg [1:0] ex_ALUop_out,
	input ex_ALUsrc_in,
	output reg ex_ALUsrc_out,
	input clk);
	
	always @(posedge clk)
		begin
			PC_out<=PC_in;
			register1_out<=register1_in;
			register2_out<=register2_in;
			sign_extend_out<=sign_extend_in;
			rt_out<=rt_in;
			rd_out<=rd_in;
			wb_src_out<=wb_src_in;
			wb_write_out<=wb_write_in;
			mem_read_out<=mem_read_in;
			mem_write_out<=mem_write_in;
			jump_out<=jump_in;
			ex_ALUop_out<=ex_ALUop_in;
			ex_ALUsrc_out<=ex_ALUsrc_in;
		end
	
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
