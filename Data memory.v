module DataMemory ( address , DataToWrite , ReadData , MemWrite , MemRead , clk);		
	input [31:0] address ;
	input [31:0] DataToWrite ;
	input MemWrite , MemRead , clk;
	output [31:0] ReadData ; 
	reg [31:0] ReadData ;
	reg [31:0] DataMemory[ 0:2047 ]; 
	
	initial  
		begin

		$readmemb("ThisIsDataMemTesting.txt", DataMemory); // file present in (modelsim\examples)
		//$display ( DataMemory[1]);	-------------------------------------------- testing
		//$display ( DataMemory[4]);	-------------------------------------------- testing

		end	 
		always @ ( posedge clk )

			if (  MemRead==1 && MemWrite==0 )
				begin
 
			//$display ("  memory read = 1 while memory write = 0 " );----------------------- testing
			//$display (" memory before reading new data = " , ReadData ); --------------------- testing

			ReadData = DataMemory [ address ] ;  

			//$display (" after reading data = %b" , ReadData );  ------------------------------- testing
			//	$display ( DataMemory[1]);	------------------------------------------ testing

				end
									
			else if ( MemWrite == 1 && MemRead == 0 )
				begin 
 
				//$display ("  memory read = 0 while memory write = 1 " );----------------------- testing
				//$display (" memory before adding new data = " , DataMemory[address] );------------- testing

				DataMemory [ address ] = DataToWrite;

				// $display (" memory after writing data = " , DataMemory[address] ); ----------------- testing
				//$display ( DataMemory[1]);	-------------------------------------------------------testing

				end	  

			else if (  MemRead==0 && MemWrite==0 )
				begin  
				
				//$display (" both memory read & write are set to 0 at the same time" ); ------------- testing
				
				end	   
			else if ( MemRead== 1 && MemWrite==1 )
				begin  

				// $display (" both memory read & write can not be set to 1 at the same time" ); ------------- testing
					
				end
			
	endmodule
