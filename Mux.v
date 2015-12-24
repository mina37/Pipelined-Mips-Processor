//-----------------------------------------------------------------------------
//
// Title       : mux
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\mux.v
// Generated   : Thu Dec 24 14:41:21 2015
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
//{module {mux}}
module mux (
 in0      , // Mux first input
in1      , // Mux Second input
sel        , // Select input
out      // Mux output
);
 //-----------Input Ports---------------
input in0, in1, sel ;
//-----------Output Ports---------------
output out;
//------------Internal Variables--------
wire  out;
//-------------Code Start-----------------
assign out = (sel) ? in1 : in0;

endmodule //End Of Module mux
//}} End of automatically maintained section

// -- Enter your statements here -- //

