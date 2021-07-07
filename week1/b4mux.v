`timescale 1ns / 1ns

module b4mux(
 output reg [3:0] bit4,
 input [7:0] bit8,
 input mux_sel,clk
);


always @ (posedge clk)
 begin
  if(mux_sel)
   bit4 <= bit8[7:4];
  else
   bit4 <= bit8[3:0];
 end

endmodule


 
