`timescale 1ns / 1ns
`include "fsm.v"

module controller
#(parameter idle=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5) 
(
 output reg input_sela,input_selb,done,
 output reg [1:0] shift_sel, 
 input clk,rst,st,
 input [2:0] clk_ena
);

reg [2:0] count;

always @ (posedge clk or negedge rst)
 if(rst==1'b0)
  begin
   input_sela <= 1'b0;
   input_selb <= 1'b0;
   count <= idle;
  end 
 else(st==1)
  fsm u1(.input_sela(input_sela),.input_selb(input_selb),.shift_sel(shift_sel),.done(done),.st(st),.rst(rst),.clk(clk),.clk_ena(clk_ena),.count(count));
    
endmodule
