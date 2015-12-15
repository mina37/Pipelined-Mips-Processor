//-----------------------------------------------------------------------------
//
// Title       : forwarding
// Design      : mips pilining
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\mips\mips pilining\src\forwarding.v
// Generated   : Mon Dec 14 00:33:49 2015
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
//{module {forwarding}}
module forwarding (IdExRs,IdExRt,ExMemWb,MemWbWb,ExMemRd,MemWbRd,FwdA,FwdB); 
	input [4:0] IdExRs;
	input [4:0] IdExRt;
	input 		ExMemWb;
	input		MemWbWb;////
	input [4:0]	ExMemRd;
	input [4:0]	MemWbRd;
	
	output reg [1:0] FwdA;
	output reg [1:0] FwdB;
	always@(IdExRs,IdExRt)
		begin
			
			if(ExMemWb==1 && ExMemRd != 5'b00000)
				begin
					if(ExMemRd == IdExRs)	FwdA <= 2'b10;
				end
			else if(MemWbWb == 1 && MemWbRd != 5'b00000)
				begin
					if (MemWbRd == IdExRs) FwdA <= 2'b01;
				end
			else FwdA <= 2'b00;
			if(ExMemWb==1 && ExMemRd != 5'b00000)
				begin
					if(ExMemRd == IdExRt)  FwdB <=  2'b10;
				end
			else if(MemWbWb == 1 && MemWbRd != 5'b00000)
				begin
					if (MemWbRd == IdExRt) FwdB	<= 2'b01;
				end
			else FwdB <= 2'b00;	  
		end
	
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //
	
endmodule
