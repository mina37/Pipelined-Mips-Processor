
module mipsALU (ALUctrl,in1,in2,op,zeroSignal);
input  [3:0] ALUctrl;
input signed [31:0]in1,in2;
output reg signed [31:0] op; 
output zeroSignal;


 
assign zeroSignal = (0 == op); //Zero is true if ALU ouput is 0; 
//assign do the assigning continously in program
  

always @(ALUctrl or in1 or in2)
begin
case (ALUctrl)
0: op  <= in1 & in2; //and
1: op  <= in1 | in2;//or
2: op  <= in1 + in2; // add
//6: op  <= in1 - in2; //subtract
6: begin 
       if ((in1-in2)>0)
         begin 
    op  <= in1 - in2; //normal subtract subtract
         end
       if ((in1-in2)<0) 
          begin
    op <= (~(in1-in2))+1;
    op <= op*(-1);

           end
     end
7: op  <= in1 < in2 ? 1:0; // if in1 is less than in2 then op is 1 
12:op  <= ~(in1 | in2); //nor

3:op <= in1 << in2 ;

default: op <= 0; //by default output is zero 

endcase

end
endmodule





 //our test module :
 
 
module testALU ;  
  
reg [31:0]a,b;
reg [3:0]ctrl;

wire zeroSig;
wire [31:0] o;



initial 
begin 
  

$monitor ("at time %2t , a=%b ,b=%b ,ctrl=%d , zeroSignal=%b , out =%b ",$time ,a,b,ctrl,zeroSig ,o);
//$monitor ("at time %2t , a=%d ,b=%d ,ctrl=%d , zeroSignal=%d , out =%d ",$time ,a,b,ctrl,zeroSig ,o);
a=5 ; b= 4; ctrl = 0 ;
#10

a=2 ; b=2;ctrl = 1 ;
#10

a=8 ; b=10;ctrl = 2 ;
#10
a=8 ; b=10;ctrl = 6 ;
#10
a=8 ; b=10;ctrl = 7 ;
#10
a=8 ; b=10;ctrl = 12 ;
#10
a=5 ; b=10;ctrl = 15 ; //noth should happen (zero out)
#10
a=5 ; b=5;ctrl = 6 ;//check for zero signal to be 1 
#10
a=5 ; b=5; ctrl =3; //check on shift left logic by 5 
end

mipsALU A1(ctrl,a,b,o,zeroSig);

endmodule



