//-----------------------------------------------------------------------------
//
// Title       : mux_32_4_1
// Design      : pipline
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\pipline\src\mux_32_4_1.v
// Generated   : Fri Dec 25 10:19:27 2015
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
//{module {mux_32_4_1}}
module mux_32_4_1 (
	input [31:0] in1,
	input [31:0] in2,
	output [31:0] out,
	input sel
	);
//}} End of automatically maintained section
	assign out = (sel) ? in2 : in1;
// -- Enter your statements here -- //

endmodule
