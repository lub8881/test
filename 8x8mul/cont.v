`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/30 21:54:31
// Design Name: 
// Module Name: cont
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cont
#(parameter idle=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5)
(
 output reg input_sela,input_selb,done,
 output reg [1:0] shift_sel, 
 input clk,rst,st,
 input [2:0] clk_ena
    );
reg [2:0] count;
reg [2:0] next_count;



always @ (posedge clk or negedge rst)
 begin
  if(rst==1'b0)
   begin
   count <= idle;
   input_sela <= 1'b0;
   input_selb <= 1'b0;
   done <= 1'b1;                            // 'done' sig should update in FF procedure not in combinational block   
   end
  else
   begin                                    //'start' sig is a signal just for jumping next s1 state
   count <= next_count;
	if(next_count!=s5 && next_count!=idle)    //
	done <= 1'b0;
	else
	done <= 1'b1;      
   end
 end

always @ (*)
  begin
   case(count)

   idle: if(st==1)
          begin
          next_count = s1;
   
          end
         else
          begin
          next_count = idle;
          end
   s1:   if(clk_ena==3'd0)
         begin
          input_sela = 1'b0;
          input_selb = 1'b0;
          shift_sel = 2'b00;
        
          next_count = s2;
         end
         else
          next_count = s1;
   s2:   if(clk_ena==3'd1)
         begin
          input_sela = 1'b0;
          input_selb = 1'b1;
          shift_sel = 2'b01;
         
          next_count = s3;
         end
         else
         next_count = s2;
   s3:   if(clk_ena==3'd2)
         begin
          input_sela = 1'b1;
          input_selb = 1'b0;
          shift_sel = 2'b01;
         
          next_count = s4;
         end
         else
          next_count = s3;
   s4:   if(clk_ena==3'd3)
         begin
          input_sela = 1'b1;
          input_selb = 1'b1;
          shift_sel = 2'b10;
          
          next_count = s5;
         end
         else
          next_count = s4;
   s5:   if(st==1)
          begin
          next_count = s1; 
          end
         else
          begin
          next_count = s5;
		   end
   default: next_count = idle;       
   endcase
  end




endmodule
