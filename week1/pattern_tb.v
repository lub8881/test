`timescale 1ns / 1ns

module pattern_tb();

wire flag;
reg [15:0] data;
reg clk, rst;

pattern u1(.flag(flag),.data(data),.clk(clk),.rst(rst));

initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial
 begin
  rst=0;
  #10 rst = ~rst;
 
 end

initial
 data = 16'b0110011011001100;

initial #100 $finish;

endmodule

