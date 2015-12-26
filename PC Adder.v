//-----------------------------------------------------------------------------
//
// Title       : pc_adder
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\pc_adder.v
// Generated   : Thu Dec 24 14:16:59 2015
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
//{module {pc_adder}}
module Plus_one(In1,Out1,clk);
 
 input [31:0] In1;
 input clk;
 output[31:0] Out1;
 
 reg [31:0] Out1;
 
 always @ (posedge clk)
  Out1=In1+1;
endmodule
