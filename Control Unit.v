module Control_Unit(Instruction,Clk,Function , RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite,Jump_And_Link,JR,ALUSrc2);
	input 
	Clk;
	
	input [5:0]
	Instruction,/*The OPCODE of the instruction [31:26]*/
	Function;	/*The Function in case of R-type, [5:0]*/
	
	output
	RegDst,
	Branch,
	MemRead,
	MemtoReg,
	MemWrite,
	ALUSrc,
	RegWrite,
	Jump_And_Link,
	JR,
	ALUSrc2;
	
	
	output [3:0]
	ALUOp; /*Output to the ALU Directly (ALU control unit is already handled)*/
	
	////////////////////////////////////////////////////////////
	wire
	Clk;
	
	reg    /*TO - BE - CHECKED - IF - CORRECT*/
	RegDst,
	Branch,
	MemRead,
	MemtoReg,
	MemWrite,
	ALUSrc,
	RegWrite,
	Jump_And_Link,
	JR,
	ALUSrc2;
	
	reg [3:0] /*TO - BE - CHECKED - IF - CORRECT*/
	ALUOp;
	
	//////////////////////Parameters/////////////////////////////////
	
	parameter [3:0]  /*ALU control signal parameter section (To be sent as an output)
	will be later on used in switch cases*/
	ALU_ADD=2,
	ALU_SUB=6,
	ALU_AND=0,
	ALU_OR= 1,
	ALU_SLT=7,
	ALU_NOR=12,
	ALU_SLL=3;
	parameter [5:0]	 /*OPCODE parameter section (This is the main parameter to be compared with Instruction)
	will later on be used in switch cases*/
	RType  =0,
	ADDI =8,
	LW	 =35,
	SW	 =43,
	SLL = RType,
	AND	 =RType,
	ANDI =12,
	NOR	 =RType,
	BEQ	 =4,
	JAL	 =3,
	//JR	 =RType,
	SLT	 =RType,
	////////////////////////Function/////////////////////////////
	/*Function parameter section, second most important parameter to be compared with,
	will be later on used in switch cases with Function input*/
	FUNCTION_ADD=32,
	FUNCTION_AND=36,
	FUNCTION_SLT=42,
	FUNCTION_NOR=39,
	FUNCTION_JR=8,
	FUNCTION_SLL=0;
	
	//////////////////////////Main Always block//////////////////////////
	
	always @ (posedge Clk)
		begin
			case (Instruction) /*Switch case for the OPCODE of the instruction*/
				RType: begin /*If R-Type give the following outputs*/
					RegDst      <=	1      ;
					Branch      <=	0      ;
					MemRead     <=	0      ;
					MemtoReg    <=	0      ;
					MemWrite    <=	0      ;
					ALUSrc      <=	0      ;
					ALUSrc2 <=     0        ;
					RegWrite    <=	1      ;
					Jump_And_Link <=0;
					case (Function)/*Switch case for the function of the R-type instructions*/
						FUNCTION_ADD:begin 
							ALUOp <= ALU_ADD ;
							JR<=0; end
						FUNCTION_AND:begin 
							ALUOp <= ALU_AND ;
							JR<=0; end
						FUNCTION_SLT:begin 
							ALUOp <= ALU_SLT ;
							JR<=0; end
						FUNCTION_NOR:begin 
							ALUOp <= ALU_NOR ;
							JR<=0; end
						FUNCTION_SLL:begin 
						ALUOp <= ALU_SLL ;
						JR<=0; end
						FUNCTION_JR:
							JR <=1;
					endcase	 
					
				end
				LW: begin/*Load Word*/
					RegDst      <=	0      ;
					Branch      <=	0      ;
					MemRead     <=	1      ;
					MemtoReg    <=	1      ;
					MemWrite    <=	0      ;
					ALUSrc      <=	1      ;
					ALUSrc2 <=     0        ;
					RegWrite    <=	1      ;
					ALUOp       <=  ALU_ADD;
					Jump_And_Link <=0;
					JR <=0;
				end
				SW: begin /*Store Word*/
					RegDst      <=	1'bx      ;
					Branch      <=	0      ;
					MemRead     <=	0      ;
					MemtoReg    <=	1'bx      ;
					MemWrite    <=	1      ;
					ALUSrc      <=	1      ;
					ALUSrc2 <=      0       ;
					RegWrite    <=	0      ;
					ALUOp       <=  ALU_ADD ;
					Jump_And_Link <=0;
					JR <=0;
				end
				ANDI: begin/*And with Immediate*/
					RegDst      <=	0      ;
					Branch      <=	0      ;
					MemRead     <=	0      ;
					MemtoReg    <=	0      ;
					MemWrite    <=	0      ;
					ALUSrc      <=	1'bx      ;
					ALUSrc2 <=       1      ;
					RegWrite    <=	1      ;
					ALUOp       <=  ALU_AND;
					Jump_And_Link <=0;
					JR <=0;
				end
				ADDI: begin/*Add With Immediate*/
					RegDst      <=	 0     ;
					Branch      <=	 0     ;
					MemRead     <=	 0     ;
					MemtoReg    <=	 0     ;
					MemWrite    <=	 0     ;
					ALUSrc      <=	 1     ;
					ALUSrc2 <=       0      ;
					RegWrite    <=	 1     ;
					ALUOp       <=  ALU_ADD;
					Jump_And_Link <=0;
					JR <=0;
				end					
				BEQ: begin/*Branch if equal*/
					RegDst      <=1'bx     ;
					Branch      <=	 1     ;
					MemRead     <=	 0     ;
					MemtoReg    <=1'bx     ;
					MemWrite    <=	 0     ;
					ALUSrc      <=	 0     ;
					ALUSrc2 <=       0      ;
					RegWrite    <=	 0     ;
					ALUOp       <=  ALU_SUB;
					Jump_And_Link <=0;
					JR <=0;
				end	
				JAL: begin   //TO - BE - CHECKED - IF - CORRECT
					RegDst      <=	  2    ;
					Branch      <=	  0   ;
					MemRead     <=	  0   ;
					MemtoReg    <=	  2   ;
					MemWrite    <=	  0   ;
					ALUSrc      <=	  1'bx;
					ALUSrc2 <=        0     ;
					RegWrite    <=	  1   ;
					ALUOp       <=  1'bx;
					Jump_And_Link <=1;
					JR <=0;
				end	 
			endcase
		end
	endmodule
