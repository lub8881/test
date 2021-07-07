`timescale 1ns /1ns 

module b16reg(
 output reg [15:0] reg_out,
 input clk,sclr_n,clk_en,
 input [15:0] datain
);

always @ (posedge clk)
 begin
  if (sclr_n)
   case (clk_en)
    1'b1 : reg_out <= datain;
    1'b0 : reg_out <= reg_out;
   endcase
  else
   reg_out <= 16'b0;
 end

endmodule
   
   
    
   




























