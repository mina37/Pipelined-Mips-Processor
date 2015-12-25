//-----------------------------------------------------------------------------
//
// Title       : FWD_follower
// Design      : pipline
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\pipline\src\FWD_follower.v
// Generated   : Fri Dec 25 13:23:34 2015
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
//{module {FWD_follower}}
module FWD_follower (
	input [1:0] in,
	output out1,
	output out2
	);
	assign out1=in[0];
	assign out2=in[1];
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
