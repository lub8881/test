`timescale 1ns /1ns

module multi4x4(

 output reg [7:0] out,
 input [3:0] in1,in2,
)

always @ (*)
 out <= in1 * in2;

endmodule
  
