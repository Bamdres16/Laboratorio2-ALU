module testDecoder ();

logic [3:0] A;
logic [6:0] out;

Decodificador deco (A,out);

initial begin 

	A = 3'b010; #10;
	A = 3'b111; #10;
	A = 3'b011; #10;
	A = 3'b001; #10;
	A = 3'b011; #10;
	A = 3'b001; #10;

end
endmodule
