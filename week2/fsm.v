`timescale 1ns / 1ns

module fsm
#(parameter idle=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5) 
(
 output reg input_sela,input_selb, 
 output reg [1:0]shift_sel,
 output reg done,
 input st,rst,clk,
 input [2:0] count,clk_ena
);

reg [2:0] next_count;

 
always @ (posedge clk or negedge rst)
 begin
  if(rst==1'b0)
   count <= idle;
  else
   count <= next_count;
 end 
  

always @ (*)
  begin
   case(count)
 
   idle: if(clk_ena==3'd0)
          begin
          next_count <= s1;  
          done <= 1'b0;
          end
         else
          begin
          next_count <= idle;          
//          done <= 1'b0;
          end 
   s1:   if(clk_ena==3'd1)
         begin
          next_count <= s2;
          input_sela <= 1'b0;
	  input_selb <= 1'b0;
          shift_sel <= 2'b00;
          done <= 1'b0;
         end
         else
          next_count <= s1;  
   s2:   if(clk_ena==3'd2)
         begin
          next_count <= s3;
          input_sela <= 1'b0;
          input_selb <= 1'b1;
          shift_sel <= 2'b01;
          done <= 1'b0;
         end
         else
         next_count <= s2;
   s3:   if(clk_ena==3'd3)
         begin
          next_count <= s4;
          input_sela <= 1'b1;
          input_selb <= 1'b0;
          shift_sel <= 2'b01;
          done <= 1'b0;
         end
         else
          next_count <= s3;
   s4:   if(clk_ena==3'd4)
         begin
          next_count <= s5;
          input_sela <= 1'b1;
          input_selb <= 1'b1;
          shift_sel <= 2'b10;
          done <= 1'b0;
         end
         else
          next_count <= s4;
   s5:   if(clk_ena==3'd5)
          done <= 1'b1;          
         else
          next_count <= s5; 
   endcase       
  end



endmodule










 
