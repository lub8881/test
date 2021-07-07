`timescale 1ns / 1ns

module ifelse(

input a,b,c,sela,selb,clk,
output reg q
);

always @(posedge clk)
	begin
	 if(sela)
	  q<=a;
	 else
	  if(selb)
	   q<=b;
	  else
	   q<=c;
	end

endmodule

