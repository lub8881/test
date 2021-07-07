`timescale 1ns / 1ns

module lshifter(
 output reg [15:0] shifted_a,shifted_b,
 input [3:0] bit4_a,bit4_b,
 input mux_sel_a,mux_sel_b,clk
);

always @ (posedge clk)

 begin
  if(mux_sel_a & mux_sel_b)
  begin
   shifted_a <= bit4_a << 8;
   shifted_b <= bit4_b << 8;
   end
  else if(mux_sel_a ^ mux_sel_b)
  begin
   shifted_a <= bit4_a << 4;
   shifted_b <= bit4_b << 4;
   end
  else
   begin
   shifted_a <= {12'b0,bit4_a};
   shifted_b <= {12'b0,bit4_b};
   end
 end  


endmodule
