`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/02 23:31:00
// Design Name: 
// Module Name: segmentd_case
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


module segmentd_case(
 output reg [6:0] out,
 input [3:0] in
    );

always @ (*)
 begin
  case (in)
   3'd0 : out = 7'b1111110;
   3'd1 : out = 7'b0110000;
   3'd2 : out = 7'b1101101;
   3'd3 : out = 7'b1111001;
   3'd4 : out = 7'b0110011;
   3'd5 : out = 7'b1011011;
   3'd6 : out = 7'b1011111;
   3'd7 : out = 7'b1110010;
   3'd8 : out = 7'b1111111;
   3'd9 : out = 7'b1110011;
 //  default : out = 7'b0000001;
  endcase
 end  


endmodule
