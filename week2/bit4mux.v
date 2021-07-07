`timescale 1ns / 1ns

module bit4mux(
 output reg [3:0] out,
 input [7:0] in,
 input [1:0]input_sel
);

always @ (input_sel)
 begin
  case (input_sel[0])
   1'b0 : out <= in[3:0];
   1'b1 : out <= in[7:4];
  endcase
 end

endmodule

   

