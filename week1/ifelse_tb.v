`timescale 1ns / 1ns

module ifelse_tb();

wire q;
reg a,b,c,sela,selb,clk;


ifelse u1(.a(a),.b(b),.c(c),.sela(sela),.selb(selb),.q(q),.clk(clk));



initial
 begin
  clk=0;
  forever clk = #1 ~clk;
 end

initial 
 begin
  a = 0;
  forever a = #1 ~a;
 end

initial
 begin
  b = 0;
  forever b = #2 ~b;
 end

initial
 begin
  c = 0;
  forever c = #5 ~c;
 end


initial
 begin
  sela = 1;
  forever sela = #1 ~sela;
 end

initial
 begin
  selb = 0;
  forever selb = #1 ~selb;
 end

initial #500 $finish;

endmodule




