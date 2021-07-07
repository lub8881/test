`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/03 14:32:03
// Design Name: 
// Module Name: top
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
`include "control.v"
`include "mux.v"
`include "multiplier.v"
`include "shift.v"
`include "adder16.v"
`include "register.v"

module top(
 output reg [15:0] answer,
 input st,rst,clk,
 input [7:0] a,
 input [7:0] b
    );
wire sela;
wire selb;
wire done;
wire [1:0] shift_sel;
wire [2:0] clk_ena;
wire [3:0] amux_mul;
wire [3:0] bmux_mul;
wire [7:0] mul_shi;
wire [15:0] shi_add;
wire [15:0] addout_regin;
wire [15:0] regout_addin;  

control ctr(.st(st),.rst(rst),.clk(clk),.clk_ena(clk_ena),.shift_sel(shift_sel),.input_sela(sela),.input_selb(selb),.done(done));

mux amux(.in(a),.input_sel(sela),.out(amux_mul));
mux bmux(.in(b),.input_sel(selb),.out(bmux_mul));

multiplier multi(.in1(amux_mul),.in2(bmux_mul),.out(mul_shi));

shift shi(.in(mul_shi),.shift_sel(shift_sel),.out(shi_add));

adder16 add(.in1(shi_add),.in2(regout_addin),.out(addout_regin));

register regi(.in(addout_regin),.clk(clk),.done(done),.rst(rst),.clk_ena(clk_ena),.answer(regout_addin));

always @ (*)
 answer = regout_addin;

endmodule
