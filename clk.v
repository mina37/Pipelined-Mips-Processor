//-----------------------------------------------------------------------------
//
// Title       : CLK
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\CLK.v
// Generated   : Thu Dec 24 20:25:25 2015
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
//{module {CLK}}
module CLK (output reg clk);
	always
		begin
			#5
			clk=~clk;
		end
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
