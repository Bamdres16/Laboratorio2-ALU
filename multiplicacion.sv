module multiplicacion #(parameter N)
								(input logic [N-1:0]a,b,
								output logic [N-1:0]mult_out);
		assign mult_out = a * b;
endmodule
