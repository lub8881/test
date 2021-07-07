`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 22:23:53
// Design Name: 
// Module Name: top8x8
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
`include "cont.v"
`include "bit4mux.v"
`include "multi4x4.v"
`include "shifter.v"
`include "adder16bit.v"
`include "register16.v"
`include "transtodec.v"
`include "segmentd_mux.v"
`include "segmentd_case.v"
`include "segmentd_reg0.v"
`include "segmentd_reg1.v"
`include "segmentd_reg2.v"
`include "segmentd_reg3.v"
`include "segmentd_reg4.v"



module top8x8(
 output reg [6:0] answer0,answer1,answer2,answer3,answer4,
 input st,rst,clk,
 input [7:0] a,
 input [7:0] b
    );
wire sela;
wire selb;
wire done;
wire [2:0] seg_mux_selmux;



wire [1:0] shift_sel;
wire [2:0] clk_ena;
wire [3:0] amux_mul;
wire [3:0] bmux_mul;
wire [7:0] mul_shi;
wire [15:0] shi_add;
wire [15:0] addout_regin;
wire [15:0] regout_addin;  
wire [3:0] tdec_segmux0;
wire [3:0] tdec_segmux1;
wire [3:0] tdec_segmux2;
wire [3:0] tdec_segmux3;
wire [3:0] tdec_segmux4;
wire [3:0] segmux_case;
wire [6:0] case_segreg;
wire [6:0] reg0ans;
wire [6:0] reg1ans;
wire [6:0] reg2ans;
wire [6:0] reg3ans;
wire [6:0] reg4ans;

cont ctr(.st(st),.rst(rst),.clk(clk),.clk_ena(clk_ena),.shift_sel(shift_sel),.input_sela(sela),.input_selb(selb),.seg_mux_sel(seg_mux_selmux),.done(done));

bit4mux amux(.in(a),.input_sel(sela),.out(amux_mul));
bit4mux bmux(.in(b),.input_sel(selb),.out(bmux_mul));

multi4x4 multi(.in1(amux_mul),.in2(bmux_mul),.out(mul_shi));

shifter shi(.in(mul_shi),.shift_sel(shift_sel),.out(shi_add));

adder16bit add(.in1(shi_add),.in2(regout_addin),.out(addout_regin));

register16 regi(.in(addout_regin),.clk(clk),.done(done),.rst(rst),.clk_ena(clk_ena),.answer(regout_addin));

transtodec trans(.o0(tdec_segmux0),.o1(tdec_segmux1),.o2(tdec_segmux2),.o3(tdec_segmux3),.o4(tdec_segmux4),.answer(regout_addin));
segmentd_mux segmux(.out(segmux_case),.i0(tdec_segmux0),.i1(tdec_segmux1),.i2(tdec_segmux2),.i3(tdec_segmux3),.i4(tdec_segmux4),.seg_mux_sel(seg_mux_selmux));
segmentd_case segcase(.out(case_segreg),.in(segmux_case));
segmentd_reg0 reg0(.done(done),.rst(rst),.out(reg0ans),.in(case_segreg),.seg_mux_sel(seg_mux_selmux),.clk(clk));
segmentd_reg1 reg1(.done(done),.rst(rst),.out(reg1ans),.in(case_segreg),.seg_mux_sel(seg_mux_selmux),.clk(clk));
segmentd_reg2 reg2(.done(done),.rst(rst),.out(reg2ans),.in(case_segreg),.seg_mux_sel(seg_mux_selmux),.clk(clk));
segmentd_reg3 reg3(.done(done),.rst(rst),.out(reg3ans),.in(case_segreg),.seg_mux_sel(seg_mux_selmux),.clk(clk));
segmentd_reg4 reg4(.done(done),.rst(rst),.out(reg4ans),.in(case_segreg),.seg_mux_sel(seg_mux_selmux),.clk(clk));

always @ (*)
 begin
 answer0 = reg0ans;
 answer1 = reg1ans;
 answer2 = reg2ans;
 answer3 = reg3ans;   
 answer4 = reg4ans;
 end   
endmodule
