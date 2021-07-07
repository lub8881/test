`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/02 23:37:32
// Design Name: 
// Module Name: segmentd_reg
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


module segmentd_reg3(
 output reg [6:0] out,
 input [6:0] in,
 input [2:0] seg_mux_sel,
 input clk,rst,done
 
 );

always @ (posedge clk or negedge rst)
 begin
 if(rst==1'b0)
  out <= 7'b0000001;
 else if(done==1'b1 && seg_mux_sel==3'd3)
  out <= in;
 else
  out <= out;
 end
endmodule
