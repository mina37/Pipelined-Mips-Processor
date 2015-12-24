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
	
	
	always @(IdExRs or IdExRt or ExMemWb or MemWbWb or ExMemRd or MemWbRd)//(posedge clk)//@(IdExRs[0] or IdExRs[1] or IdExRs[2] or IdExRs[3] or IdExRs[4] or IdExRt[0] or IdExRt[1] or IdExRt[2] or IdExRt[3] or IdExRt[4] or ExMemWb or MemWbWb or ExMemRd[0] or ExMemRd[1] or ExMemRd[2] or ExMemRd[3] or ExMemRd[4] or MemWbRd[0] or MemWbRd[1] or MemWbRd[2] or MemWbRd[3] or MemWbRd[4])//@(edge IdExRs or edge IdExRt or edge ExMemWb or edge MemWbWb or edge ExMemRd or edge MemWbRd) //IdExRs or IdExRt or ExMemWb or MemWbWb or ExMemRd or MemWbRd)
		begin
			FwdA=0;
			if((ExMemWb==1) && (ExMemRd != 5'b00000))
				begin
					if(ExMemRd == IdExRs)
						begin
							FwdA = 2;
						end
					else if((MemWbWb == 1) && (MemWbRd != 5'b00000))
						begin
							if (MemWbRd == IdExRs)
								begin
									FwdA = 1;
								end
						end
				end
			
				
			else
				begin
					FwdA = 0;
				end
		end
			
		always @(IdExRs or IdExRt or ExMemWb or MemWbWb or ExMemRd or MemWbRd)//posedge clk)
			begin
				FwdB=0;
			if((ExMemWb==1) && (ExMemRd != 5'b00000))
				begin
					if(ExMemRd == IdExRt)
						begin
							FwdB =  2;
						end
					else if((MemWbWb == 1) && (MemWbRd != 5'b00000))
						begin
							if (MemWbRd == IdExRt)
								begin
									FwdB = 1;
								end
						end
				end
			
			else
				begin
					FwdB = 0;
				end
			end
			
		//assign FwdA = ((ExMemWb===1) && (ExMemRd !== 5'b00000))? ((ExMemRd === IdExRs)? 2'b10:(((MemWbWb == 1) && (MemWbRd !== 5'b00000))?
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //
	
endmodule
