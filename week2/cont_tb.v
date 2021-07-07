`timescale 1ns / 1ns

module cont_tb();

cont(.input_Sela(input_sela),.input_selb(input_selb),.done(done),.shift_sel(shift_sel),.clk(clk),.rst(rst),.st(st),.clk_ena(clk_ena));


wire input_sela,input_selb,done;
wire [1:0] shift_sel;

reg st,rst,clk;
reg [2:0] clk_ena;


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
 clk_ena = 3'd1;
 end

initial #100 &finish;


endmodule
