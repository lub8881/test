`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 22:10:24
// Design Name: 
// Module Name: multi4x4
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


module multi4x4(

 output reg [7:0] out,
 input [3:0] in1,
 input [3:0] in2
    );

always @ (*)
 out = in1 * in2;


endmodule
