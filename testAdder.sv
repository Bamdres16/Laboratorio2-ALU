module testAdder#(parameter N = 8);

logic [N-1:0]A;
logic [N-1:0]B;
logic Cin;
logic [N-1:0] Suma;
logic Cout;


adder #(N) dut (.a(A), .b(B), .cin(Cin), .s(Suma), .cout(Cout));


initial begin 

#10 A = 8'b11111111;B = 8'b11111111; Cin = 0;
end

endmodule

