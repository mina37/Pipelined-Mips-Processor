module Control_Unit(Instruction,Clk,Function , RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
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
	RegWrite;
	
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
	RegWrite;
	
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
	JR	 =RType,
	SLT	 =RType
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
					RegWrite    <=	1      ;
					
					case (Function)/*Switch case for the function of the R-type instructions*/
						FUNCTION_ADD: 
							ALUOp <= ALU_ADD ;
						FUNCTION_AND: 
							ALUOp <= ALU_AND ;
						FUNCTION_SLT: 
							ALUOp <= ALU_SLT ;
						FUNCTION_NOR: 
							ALUOp <= ALU_NOR ;
						FUNCTION_SLL: 
							ALUOp <= ALU_SLL ;
					endcase	 
					
				end
				LW: begin/*Load Word*/
					RegDst      <=	0      ;
					Branch      <=	0      ;
					MemRead     <=	1      ;
					MemtoReg    <=	1      ;
					MemWrite    <=	0      ;
					ALUSrc      <=	1      ;
					RegWrite    <=	1      ;
					ALUOp       <=  ALU_ADD ;
				end
				SW: begin /*Store Word*/
					RegDst      <=	1'bx      ;
					Branch      <=	0      ;
					MemRead     <=	0      ;
					MemtoReg    <=	1'bx      ;
					MemWrite    <=	1      ;
					ALUSrc      <=	1      ;
					RegWrite    <=	0      ;
					ALUOp       <=  ALU_ADD ;
				end
				ANDI: begin/*And with Immediate*/
					RegDst      <=	0      ;
					Branch      <=	0      ;
					MemRead     <=	0      ;
					MemtoReg    <=	0      ;
					MemWrite    <=	0      ;
					ALUSrc      <=	1      ;
					RegWrite    <=	1      ;
					ALUOp       <=  ALU_AND;
				end
				ADDI: begin/*Add With Immediate*/
					RegDst      <=	 0     ;
					Branch      <=	 0     ;
					MemRead     <=	 0     ;
					MemtoReg    <=	 0     ;
					MemWrite    <=	 0     ;
					ALUSrc      <=	 1     ;
					RegWrite    <=	 1     ;
					ALUOp       <=  ALU_ADD;
				end					
				BEQ: begin/*Branch if equal*/
					RegDst      <=1'bx     ;
					Branch      <=	 1     ;
					MemRead     <=	 0     ;
					MemtoReg    <=1'bx     ;
					MemWrite    <=	 0     ;
					ALUSrc      <=	 0     ;
					RegWrite    <=	 0     ;
					ALUOp       <=  ALU_SUB;
				end	
			/*	JAL: begin   //TO - BE - CHECKED - IF - CORRECT
					RegDst      <=	      ;
					Branch      <=	      ;
					MemRead     <=	      ;
					MemtoReg    <=	      ;
					MemWrite    <=	      ;
					ALUSrc      <=	      ;
					RegWrite    <=	      ;
					ALUOp       <=   ;
				end	 */
			endcase
		end
	endmodule
