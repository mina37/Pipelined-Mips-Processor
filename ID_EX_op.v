//-----------------------------------------------------------------------------
//
// Title       : ID_EX_op
// Design      : pipline
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\pipline\src\ID_EX_op.v
// Generated   : Fri Dec 25 14:00:32 2015
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
//{module {ID_EX_op}}
module ID_EX_op (
	input [3:0] in,
	output reg [3:0] out,
	input clk
	);		 
	
	always @(posedge clk)
		begin
			out<=in;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
