`timescale 1ns / 1ns

module fsm_tb();

wire input_sela,input_selb;
wire [1:0] shift_sel;
wire done;

reg st,rst,clk;
reg [2:0] count, clk_ena;


initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial
 begin
  rst=0;
  #3  rst = ~rst;
  #90 rst = ~rst;
 end

initial
 begin
  st=0;
  #4 st = ~st;

initial
 begin
 a = 8'd55;
 b = 8'd20;
 end


