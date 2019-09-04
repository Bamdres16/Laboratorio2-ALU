module testLogico #(parameter N = 4);

logic [N-1:0] A,B, out;
logic [2:0] selector;

MuxLogico #(N) logico (A,B,selector,out);

initial begin

	#10 A = 4'b1100; B = 4'b0111; selector = 3'b000;
	#10 A = 4'b1111; B = 4'b0110;
	#10 A = 4'b1011; B = 4'b0011; selector = 3'b001;
	

end 
endmodule 