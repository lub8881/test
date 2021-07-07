`timescale 1ns / 1ns

module way5counter_tb();

wire [3:0] cnt;
reg clk, rst, inc;
 


way5counter u1 (.cnt(cnt),.clk(clk),.rst(rst),.inc(inc));



initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial
 begin
  rst=0;
  forever rst = #10 ~rst;
 end

initial
 begin
  inc=0;
  forever inc = #20 ~inc;
 end

initial #300 $finish;

endmodule




