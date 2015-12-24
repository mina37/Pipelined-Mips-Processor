//-----------------------------------------------------------------------------
//
// Title       : EX_MEM
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\EX_MEM.v
// Generated   : Thu Dec 24 19:43:13 2015
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
//{module {EX_MEM}}
module EX_MEM (
	input [31:0] branch_address_in,
	output reg [31:0] branch_address_out,
	input zero_flag_in,
	output reg zero_flag_out,
	input [31:0] ALU_res_in,
	output reg [31:0] ALU_res_out,
	input [31:0] reg_res_in,
	output reg [31:0] reg_res_out,
	input [4:0] rt_rd_in,
	output reg [4:0] rt_rd_out,
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
	input clk);
	
	always @(posedge clk)
		begin
			branch_address_out<=branch_address_in;
			zero_flag_out<=zero_flag_in;
			ALU_res_out<=ALU_res_in;
			reg_res_out<=reg_res_in;
			rt_rd_out<=rt_rd_in;
			wb_src_out<=wb_src_in;
			wb_write_out<=wb_write_in;
			mem_read_out<=mem_read_in;
			mem_write_out<=mem_write_in;
			jump_out<=jump_in;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
