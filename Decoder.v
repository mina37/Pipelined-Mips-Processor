//-----------------------------------------------------------------------------
//
// Title       : Decoder
// Design      : Decoder
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\CO_Project\Decoder\src\Decoder.v
// Generated   : Wed Dec 16 17:19:36 2015
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
//{module {Decoder}}
module Decoder (Read_Address, clk, Control, Read_Register_1, Read_Register_2, Write_Register, Sign_Extend);
	input [31:0]	Read_Address;
	input clk;
	output reg [31:26] Control;
	output reg [25:21] Read_Register_1;
	output reg [20:16] Read_Register_2;
	output reg [15:11] Write_Register;
	output reg [15:0] Sign_Extend; 
	wire [31:0] Control_Wire,Register1_Wire, Register2_Wire, Write_Register_Wire, Sign_Extend_Wire;
	assign Control_Wire = 	 Read_Address & 32'b11111100000000000000000000000000;	
	assign  Register1_Wire = Read_Address & 32'b00000011111000000000000000000000;	  
	assign 	Register2_Wire = Read_Address & 32'b00000000000111110000000000000000;	
	assign Write_Register_Wire =Read_Address & 32'b00000000000000001111100000000000;  
	assign Sign_Extend_Wire = Read_Address & 32'b00000000000000001111111111111111;
	always @(posedge clk) begin	  
		Control <= Control_Wire >> 26;
		Read_Register_1 <= Register1_Wire >> 21; 
		Read_Register_2 <= Register2_Wire >> 16;
		Write_Register <= Write_Register_Wire >> 11;
		Sign_Extend <= Sign_Extend_Wire ;
		end
endmodule
