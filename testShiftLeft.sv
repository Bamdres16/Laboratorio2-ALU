module testShiftLeft#(parameter N = 8);

logic [N-1:0]A;
logic [N-1:0]Shamt;
logic [N-1:0]Shift;



shiftLeft #(N) dut (.a(A), .n(Shamt), .shift(Shift));

initial begin 


	
	#10 A = 8'b00000010; Shamt = 8'b0000010;
	 



end

endmodule 