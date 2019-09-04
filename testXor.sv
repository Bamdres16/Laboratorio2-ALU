module testXor#(parameter N = 8);

logic [N-1:0]A;
logic [N-1:0]B;
logic [N-1:0]Y;



xor_gate #(N) dut  (.a(A),.b(B),.y(Y));

initial begin 


	
	#10 A = 8'b00000000;B = 8'b11111111; 
	 



end

endmodule 