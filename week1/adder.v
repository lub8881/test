`timescale 1ns / 1ns

module adder(
	output wire [15:0] sum,
	input [15:0] dataa,datab
);

assign sum = dataa + datab;


endmodule    
