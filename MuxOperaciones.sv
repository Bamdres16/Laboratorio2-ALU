// Operacion: Selecciona si es aritmética o lógica
//	s: Es el número de bit

module MuxOperaciones #(parameter N)
							 (input [N-1:0] A,B,
							 input logic [2:0] selector1,selector2,
							  input operacion,
							  output [N-1:0] out);
	logic [N-1:0] mLogico;
	logic [N-1:0] mAritmetico;
	
	MuxLogico #(N) ML (A,B,selector1,mLogico);
	MuxAritmetico #(N) MA (A,B,selector2,mAritmetico);
	
	assign out = operacion ? mLogico 
								  : mAritmetico;
							 
							 
		
		
		
																		
endmodule
