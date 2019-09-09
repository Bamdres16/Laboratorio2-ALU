module testRegistro #(parameter N = 4);
	
	logic [N-1:0] D,Q;
	logic clock,reset;
	
	always begin
	
	clock = 0; #5; clock = 1; #5;
	
	end
	
	
	registro #(N) dut (.clk(clock), .D(D), .reset(reset) , .Q(Q));
	
	
	initial begin
	
	
	
	D = 4'b1101; reset = 0; #10 reset = 1;
	
	
	
	
	end 






endmodule 