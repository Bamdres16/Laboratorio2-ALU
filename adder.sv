module adder #(parameter N)

		(input logic [N-1:0] a, b,
		
		input logic             cin,
		
		output logic [N-1:0] s,
		
		output logic cout);
		
	assign {cout,s} = a + b + cin;
<<<<<<< HEAD
	
=======
	//assign s = a+b;
>>>>>>> be719f87da2b3f2e17e53a22dabc3511f133f571
endmodule



