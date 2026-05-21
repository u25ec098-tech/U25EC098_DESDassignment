module nand1 (
    input a,
    input b,
    output y
);

    assign y = ~(a & b);

endmodule

module xor1 (
    input a,
    input b,
    output y
);

    wire m1, m2, m3;

    nand1 inst1 (.a(a), .b(b), .y(m1));
    nand1 inst2 (.a(a), .b(m1), .y(m2));
    nand1 inst3 (.a(m1), .b(b), .y(m3));
    nand1 inst4 (.a(m2), .b(m3), .y(y));

endmodule