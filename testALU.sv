module testALU ();
					
logic [3:0] A, B;
logic [2:0] s,f;
logic operacion;
logic [3:0] out;		

MuxOperaciones #(4)ALU (A,B,s,f,operacion,out);

initial begin
	
	#20 A = 4'b0001; B = 4'b0001; operacion = 0; f = 3'b000; s = 3'b000;
	
	
end 
endmodule
