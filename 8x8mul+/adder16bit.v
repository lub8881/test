`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 21:46:32
// Design Name: 
// Module Name: adder16bit
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


module adder16bit(
 output reg [15:0] out,
 input [15:0] in1, 
 input [15:0] in2
 );

always @ (*)
 out = in1 +in2;

endmodule
