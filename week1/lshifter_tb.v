`timescale 1ns / 1ns

module lshifter_tb();

wire [15:0] shifted_a, shifted_b;
reg mux_sel_a,mux_sel_b,clk; 
reg [3:0] bit4_a, bit4_b;

lshifter u1 (.mux_sel_a(mux_sel_a),.mux_sel_b(mux_sel_b),.clk(clk),.shifted_a(shifted_a),.shifted_b(shifted_b),.bit4_a(bit4_a),.bit4_b(bit4_b));


initial
 begin
 clk = 0;
 forever clk = #10 ~clk;
 end

initial
 begin
 mux_sel_a = 0;
 forever mux_sel_a = #10 ~mux_sel_a;
 end

initial
 begin
 mux_sel_b = 0;
 forever mux_sel_b = #20 ~mux_sel_b;
 end

initial
 begin
 bit4_a = 4'd13;
 bit4_b = 4'd8;
// #50 bit4_a = 4'd11;
 end

initial #200 $finish;

endmodule


