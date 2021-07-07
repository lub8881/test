`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 22:22:29
// Design Name: 
// Module Name: shifter
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


module shifter(
 output reg [15:0] out,
 input [7:0] in,
 input [1:0] shift_sel
    );

always @ (*)
 begin
  case (shift_sel)
   2'b01 : out = in <<4;
   2'b10 : out = in <<8;
   default : out = in;
  endcase
 end


endmodule
