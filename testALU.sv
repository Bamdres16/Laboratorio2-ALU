module testALU #(parameter N = 4);
					
logic [N-1:0] A, B, out;
logic [2:0] selector;
logic operacion, cout;
	

MuxOperaciones #(N)ALU (A,B,selector,operacion,cout,out);

initial begin
	operacion = 1; selector = 3'b000; A = 4'b1010; B = 4'b1010;
	#10 A = 4'b1111; B = 4'b1111;
	#10 operacion = 0; selector = 3'b010;
	
	
end 
endmodule
