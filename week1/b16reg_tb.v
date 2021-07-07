`timescale 1ns /1ns

module b16reg_tb();

wire [15:0] reg_out;
reg clk,sclr_n,clk_en;
reg [15:0] datain;

b16reg u1(.reg_out(reg_out),.datain(datain),.clk(clk),.sclr_n(sclr_n),.clk_en(clk_en));

initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial
 begin
  sclr_n = 0;
  forever #10 sclr_n = ~sclr_n;
 end

initial
 begin
  clk_en=1;
  forever clk_en = #20 ~clk_en;
 end

initial
 datain = 16'd100;

initial #200 $finish;

endmodule







