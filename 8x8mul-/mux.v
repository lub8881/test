`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/03 14:26:15
// Design Name: 
// Module Name: mux
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


module mux(
 output reg [3:0] out,
 input [7:0] in,
 input input_sel 
    );
always @ (*)
 begin
  case(input_sel)
   1'b0 : out = in[3:0];
   1'b1 : out = in[7:4];
  endcase
 end 


endmodule
