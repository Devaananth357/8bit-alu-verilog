`timescale 1ns/1ps

module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] op;
wire [7:0] result;
wire zero;

alu uut (
    .A(A),
    .B(B),
    .op(op),
    .result(result),
    .zero(zero)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    A = 8'd10; B = 8'd7;

    op = 3'b000; #10; // Add
    $monitor("Time=%0t A=%d B=%d op=%b result=%d zero=%b", $time, A, B, op, result, zero);
    op = 3'b001; #10; // Sub
    $monitor("Time=%0t A=%d B=%d op=%b result=%d zero=%b", $time, A, B, op, result, zero);
    op = 3'b010; #10; // AND
    op = 3'b011; #10; // OR
    op = 3'b100; #10; // XOR
    op = 3'b101; #10; // NOT
    op = 3'b110; #10; // Shift Left
    op = 3'b111; #10; // Shift Right

    $finish;
end

endmodule
