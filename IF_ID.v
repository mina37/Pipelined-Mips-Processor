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
module IFID (in,out,clk);
	wire clk;
	input [63:0] in;
	input clk;
	output [63:0] out;
	wire [63:0] in;
	reg [63:0] out;
	
	always @(posedge clk)
		begin
			out <= in;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
