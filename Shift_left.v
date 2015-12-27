//-----------------------------------------------------------------------------
//
// Title       : Shift_LEFT
// Design      : dasdq1
// Author      : sherry
// Company     : dsf
//
//-----------------------------------------------------------------------------
//
// File        : Shift_left.v
// Generated   : Sun Dec 27 15:19:48 2015
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------


//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {Shift_LEFT}}
module Shift_LEFT (
	input [31:0] in,
	input [31:0] pc,
	output[31:0] add
	);	
	
	assign add=(in+pc);
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
