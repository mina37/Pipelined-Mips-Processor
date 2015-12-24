//-----------------------------------------------------------------------------
//
// Title       : mips
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\mips.v
// Generated   : Thu Dec 24 13:53:46 2015
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
//{module {mips}}
module mips ();
	wire address[31:0],instruction[31:0];
	reg clk;
	instructionsMemory instruction_memory(address,clk,instuction);
	initial
		begin
			clk=1;
		end
	always
		begin
			#5
			clk=~clk;
		end
			
//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
