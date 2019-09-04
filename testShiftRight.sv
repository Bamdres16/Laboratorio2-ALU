module testShiftRight #(parameter N = 8);

logic [N-1:0]A;
logic [N-1:0]Shamt;
logic [N-1:0]Shift;

sheftRight #(N) dut (.a(A), .n(Shamt), .shift(Shift));

initial begin

#10 A = 8'b00000001; Shamt = 8'b00000010;
end


endmodule
