module substractor #(parameter N)
							(input logic [N-1:0] a, b,
							
							output logic [N-1:0] r);
		
		assign r = a - b;
endmodule
