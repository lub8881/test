`timescale 1ns /1ns

module b8counter(

 output reg [7:0] q,
 input clk, rst,
 input [1:0] func,
 input [7:0] d
);

always @ (posedge clk)
 begin
 if(!rst) 
  case (func)
   2'b00 : q <= d;
   2'b01 : q <= d+1;
   2'b11 : q <= d-1;
  endcase
 else
  q<=8'b0;
 end

endmodule 
