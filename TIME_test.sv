module TIME_test #(parameter N = 64)
						(
						input clock, reset,
						output [N-1:0] result,
						output logic  [6:0] outResult);
		
	logic [N-1:0] out1, out2,out3;
	
	logic [N-1:0] A,B;
	logic [2:0] selector;
	logic operacion;
	assign operacion = 1'b1;
	assign selector = 3'b000;
	assign A = {N{1'b1}};
	assign B = {N{1'b1}};
	
	
	registro #(N) val1(clock,A,reset,out1);
	registro #(N) val2(clock,B,reset,out2);
	
	
	MuxOperaciones #(N)ALU (out1,out2,selector,operacion,out3,outResult);

	registro #(N) val3((~clock),out3,reset,result);
	
	
	
		
		
		
	

endmodule
