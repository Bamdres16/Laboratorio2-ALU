module division #(parameter N)
						(input logic [N-1:0]a,b,
						output [N-1:0]div_out);
		assign div_out = a/b;
endmodule



