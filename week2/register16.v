`timescale 1ns / 1ns

module register16(

 output reg [15:0] answer,
 output reg [2:0]clk_ena,
 input [15:0] in,
 input clk,done,rst
 
);
 
always @ (posedge clk or negedge rst)
 begin
  if(rst==0)
   answer <= 16'b0;
   clk_ena <= 3'd0;
  else if(done==0) 
   answer <= in;
   clk_ena <= clk_ena + 3'd1;
  else
   answer <= answer;
 end
  
endmodule

