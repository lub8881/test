`timescale 1ns / 1ns

module top8x8_tb();

 wire [15:0] answer;
 reg st,rst,clk;
 reg [7:0] a,b;


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


endmodule



 
