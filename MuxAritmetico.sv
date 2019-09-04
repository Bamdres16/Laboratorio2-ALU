module MuxAritmetico #(parameter N)
							(input logic [N-1:0] A,B,
							 input logic [2:0] s,
						    output logic [N-1:0] out);
							 
	logic [N-1:0] out_suma;
	logic [N-1:0] out_resta;
	logic [N-1:0] out_corrAR;
	logic [N-1:0] out_corrAI;
	logic [N-1:0] out_corrAC;
	logic cout;
	
	adder #(N) AD (A,B,0,out_suma,cout);
	substractor #(N) SB (A,B,out_resta);
	division #(N) AR (A,B,out_corrAR);
	multiplicacion #(N) AI (A,B,out_corrAI);
	substractor #(N) AC (A,B,out_corrAC);
	
	assign out = (s[2] ? (s[1] ? (s[0] ? out_suma : out_suma) 
										: (s[0] ? out_suma : out_corrAC)) 
							 : (s[1] ? (s[0] ? out_corrAI : out_corrAR) 
										: (s[0] ? out_resta : out_suma)));
	
endmodule 


