`timescale 1ns / 1ns

module pattern
#(parameter idle=3'd0, s1=3'd1, s2=3'd2, s3=3'd3, s4=3'd4, s5=3'd5)
( output reg flag,
  input [15:0] data,
  input clk, rst
);

reg [2:0] cnt;
reg [2:0] next_cnt;
reg data_read;
reg [15:0] data_shifted;


always @ (posedge clk or negedge rst)
 begin
  if(rst==0)
   begin
   flag <= 1'b0;
   cnt <= idle;
   data_read <= data[15];
   data_shifted <= data;
   end
  else
  begin
   if(cnt == s5)
    begin
    flag <= 1'b1;
    cnt <= next_cnt;
    data_shifted <= data_shifted << 1;
    data_read <= data_shifted[15];
    end
   else
    begin
    flag <= 1'b0;
    cnt <= next_cnt; 
    data_shifted <= data_shifted << 1;
    data_read <= data_shifted[15];
    end
  end
 end

//always @ (cnt)
// begin
// data_shifted <= data << 1;
// data_read <= data_shifted[15];
// end
 
always @ (*)
   if(rst)
   begin
    case(cnt)
    idle: if(data_read == 0) 
           next_cnt <= idle;
          else 
           next_cnt <= s1;      
    s1:   if(data_read == 0) 
           next_cnt <= idle;
          else
           next_cnt <= s2;
    s2:   if(data_read == 0)
           next_cnt <= s3;
          else 
           next_cnt <= s2;
    s3:   if(data_read == 0)
           next_cnt <= s4;
          else
           next_cnt <= s1;
    s4:   if(data_read == 0)
           next_cnt <= idle;
          else  
           begin
           next_cnt <= s5;
//           flag <= 1'b1; 
           end
    s5:   if(data_read == 0)
           next_cnt <= idle; 
          else
           next_cnt <= s1;  
    endcase
   end
   else
    next_cnt <= idle;

endmodule 


