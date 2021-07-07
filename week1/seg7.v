`timescale 1ns / 1ns

module seg7(
 output reg [6:0] seg,
 input [3:0] inp,
 input clk
);

always @ (posedge clk)
 begin
  case (inp)
   3'd1 :seg <= 0110000;  
   3'd2 :seg<=1101101;
   3'd3 :seg<=1111001;
   3'd4 :seg<=1000111;
   3'd5 :seg<=1011011;
   3'd6 :seg<=1,seg_b<=0,seg_c<=1,seg_d<=1,seg_e<=1,seg_f<=1,seg_g<=1;
   3'd7 :seg<=1,seg_b<=1,seg_c<=1,seg_d<=0,seg_e<=0,seg_f<=1,seg_g<=0;
   default :seg_a<=1,seg_b<=1,seg_c<=1,seg_d<=1,seg_e<=1,seg_f<=1,seg_g<=0;
  endcase
 end

endmodule

   
