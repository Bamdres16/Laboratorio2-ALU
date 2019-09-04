module andTest #(parameter N = 4);

logic [N-1:0] A,B,S;

and_gate #(N) AND (A,B,S);

initial begin
	#10 A = 4'b1111; B = 4'b1110;
	#10 A = 4'b1101; B = 4'b1110;
	#10 A = 4'b1011; B = 4'b1100;
end

endmodule