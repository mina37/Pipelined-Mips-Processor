//-----------------------------------------------------------------------------
//
// Title       : Decoder_follower
// Design      : pipline
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\pipline\src\Decoder_follower.v
// Generated   : Fri Dec 25 13:34:28 2015
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
//{module {Decoder_follower}}
module Decoder_follower (
	input [31:0] in,
	output [5:0] out
	);
	assign out= in[5:0];
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
