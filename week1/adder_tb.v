`timescale 1ns / 1ns
//`include adder.v
module adder_tb();

reg clk;
wire [15:0] sum;
reg [15:0] dataa,datab;

adder u1(.dataa(dataa),.datab(datab),.sum(sum));

//assign sum = dataa + datab;

initial//clk gen
	begin
	clk=0;
	forever clk = #10 ~clk;
	end


initial//input
	begin
	dataa=16'h0; datab=16'h0;
	forever 
	 dataa = #5 dataa+3; 
	 datab = #10 datab+5;
	end


initial #300 $stop;

endmodule    
