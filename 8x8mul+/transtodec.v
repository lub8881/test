`timescale 1ns / 1ns

module transtodec(

 output reg [3:0] o0,o1,o2,o3,o4,
 input [15:0] answer

);

always @ (*)
 begin
  
   o0 = answer % 10;
   o1 = (answer/10)%10;
   o2 = (answer/100)%10;
   o3 = (answer/1000)%10;
   o4 = (answer/10000)%10; 

 end
 
endmodule


