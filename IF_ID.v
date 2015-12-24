//-----------------------------------------------------------------------------
//
// Title       : IF_ID
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\IF_ID.v
// Generated   : Thu Dec 24 16:53:46 2015
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
//{module {IF_ID}}
module IFID (PC_in,PC_out,instruction_in,instruction_out,clk);
	wire clk;
	input [31:0] PC_in;
	input [31:0] instruction_in;
	input clk;
	output [31:0] PC_out;
	output [31:0] instruction_out;
	reg [31:0] PC_out;
	reg [31:0] instruction_out;
	
	always @(posedge clk)
		begin
			out <= in;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
