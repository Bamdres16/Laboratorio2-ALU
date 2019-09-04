module adder #(parameter N)

		(input logic [N-1:0] a, b,
		
		input logic             cin,
		
		output logic [N-1:0] s,
		
		output logic cout);
		
	//assign {cout,s} = a + b + cin;
	assign s = a+b;
endmodule



