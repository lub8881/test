`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/02 23:06:05
// Design Name: 
// Module Name: segmentd
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


module segmentd_mux(
 output reg [3:0] out,
 input [3:0] i0,i1,i2,i3,i4,
 input [2:0] seg_mux_sel
    );

always @ (*)
begin 
 case(seg_mux_sel)
  3'd0 : out = i0;
  3'd1 : out = i1;
  3'd2 : out = i2;
  3'd3 : out = i3;
  3'd4 : out = i4;
//  default : out = 4'd11;
 endcase
end 

endmodule
