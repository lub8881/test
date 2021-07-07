`timescale 1ns / 1ns

module seg7_tb();

wire seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g;
reg clk;
reg [3:0] inp;
integer i;

initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end


initial
 inp = 3'd0;
 begin
  for(i=0; i<=7; i=i+1)
  
   #10*i inp = inp+3'd1;
  
 end


initial #500 $finish;

endmodule

