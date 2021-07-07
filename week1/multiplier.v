module multip4 (
	output reg [7:0] answer, 
	input [3:0] dataa,datab
);

//wire a1,a2,b1,b2;

assign answer = adder u1(.dataa(),.datab(),.sum())
		adder u2()
		adder u3()


endmodule
		
