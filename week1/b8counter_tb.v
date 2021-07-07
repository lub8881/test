`timescale 1ns / 1ns

module b8counter_tb();

wire [7:0] q;
reg clk,rst;
reg [1:0] func;
reg [7:0] d;
//integer i;


b8counter u1(.q(q),.clk(clk),.rst(rst),.func(func),.d(d));





initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial
 begin 
 rst = 0;
 #90 rst = 1;
 end
 

initial
 begin
 func = 2'd0;
  //for(i=0; i<=10; i=i+1)
 forever  #10 func = func + 1;
 end

initial
 d = 8'd5;

initial #100 $finish;

endmodule


