`timescale 1ns / 1ns

`include "controller.v"
`include "bit4mux.v"
`include "multi4x4.v"
`include "shifter.v"
`include "adder16bit.v"
`include "register16.v"



module top8x8(

 output reg [15:0] answer,
 input st,rst,clk,
 input [7:0] a,b

);

wire sela;
wire selb;
wire done;
wire [1:0] shift_sel;
wire [2:0] clk_ena;
wire amux_mul;
wire bmux_mul;
wire mul_shi;
wire shi_add;
wire addout_regin;
wire regout_addin;


controller ctr(.st(st),.rst(rst),.clk(clk),.clk_ena(clk_ena),.shift_sel(shift_sel),.input_sela(sela),.input_selb(selb),.done(done));

bit4mux amux(.in(a),.input_sel(sela),.out(amux_mul));
bit4mux bmux(.in(b),.input_sel(selb),.out(bmux_mul));

multi4x4 multi(.in1(amux_mul),.in2(bmux_mul),.out(mul_shi));

shifter shi(.in(mul_shi),.shift_sel(shift_sel),.out(shi_add));

adder16bit add(.in1(shi_add),.in2(regout_addin),.out(addout_regin));

register16 regi(.in(addout_regin),.clk(clk),.done(done),.rst(rst),.clk_ena(clk_ena),.answer(regout_addin));

assign answer = regout_addin;


endmodule
