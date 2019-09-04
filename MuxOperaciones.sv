// Operacion: Selecciona si es aritmética o lógica
//	s: Es el número de bit

module MuxOperaciones #(parameter N)
							 (input logic [N-1:0] A,B,
							  input logic [2:0] selector,
							  input logic operacion,
							  output logic [N-1:0] out,
							  output logic cout);
							  
							  
	logic [N-1:0] outArit, outLogic;
	
	// Salidas de cada modulo	
	
	MuxLogico #(N) ML (A,B,selector,outLogic);
	MuxAritmetico #(N) MA (A,B,selector,cout,outArit);
	
	assign out = operacion ? outArit : outLogic;
							 
																		
endmodule
