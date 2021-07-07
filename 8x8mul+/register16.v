`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 22:11:30
// Design Name: 
// Module Name: register16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register16(
 output reg [15:0] answer,
 output reg [2:0]clk_ena,
 input [15:0] in,
 input clk,done,rst
 
    );

always @ (posedge clk or negedge rst)
 begin
  if(rst==0)
   begin
   answer <= 16'b0;
   clk_ena <= 3'd0;
   end
  else if(done==1'b0) 
   begin
   answer <= in;
   clk_ena <= clk_ena + 3'd1;
   end
  else
   answer <= answer;
 end



endmodule
