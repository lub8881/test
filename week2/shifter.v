`timescale 1ns / 1ns

module shifter(

 output reg [15:0] out,
 input [7:0] in,
 input [1:0] shift_sel
);

always @ (shift_sel)
 begin
  case (shift_sel)
   2'b01 : out <= in <<4;
   2'b10 : out <= in <<8;
   default : out <= in;
  endcase
 end


endmodule 
