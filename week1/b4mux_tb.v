`timescale 1ns / 1ns

module b4mux_tb();

wire [3:0] bit4;  
reg mux_sel,clk;
reg [7:0] bit8;


b4mux u1(.mux_sel(mux_sel),.clk(clk),.bit8(bit8),.bit4(bit4));


initial
 begin
 clk = 0;
 forever clk = #1 ~clk;
 end

initial
 begin 
 mux_sel = 0;
 #10 mux_sel = 1;
 #20 mux_sel = 0;
 #10 mux_sel = 1;
 end

initial
 bit8 = 8'd30;

initial #100 $finish;

endmodule
