`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/03 14:34:33
// Design Name: 
// Module Name: top_tb
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


module top_tb();
 wire [15:0] answer;
 reg st,rst,clk;
 reg [7:0] a;
 reg [7:0] b;

top top(.answer(answer),.st(st),.rst(rst),.clk(clk),.a(a),.b(b));

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
  #3  rst = ~rst;
 end

initial
 begin
  st=0;
  #4 st = ~st;
  #3   st = ~st;
    #90 st = ~st;
  #7 st = ~st;
  end

initial
 begin
 a = 8'h12;
 b = 8'h13;
  #100
 a = 8'h23;
 b = 8'h12;
 end

initial #200 $finish;
endmodule
