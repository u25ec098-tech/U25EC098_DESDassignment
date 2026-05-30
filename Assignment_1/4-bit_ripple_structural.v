module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));

endmodule

module ripple_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [4:0] carry;
    assign carry[0] = cin;
    assign cout = carry[4];

    full_adder inst1 (.a(a[0]), .b(b[0]), .cin(carry[0]), .sum(sum[0]), .cout(carry[1]));
    full_adder inst2 (.a(a[1]), .b(b[1]), .cin(carry[1]), .sum(sum[1]), .cout(carry[2]));
    full_adder inst3 (.a(a[2]), .b(b[2]), .cin(carry[2]), .sum(sum[2]), .cout(carry[3]));
    full_adder inst4 (.a(a[3]), .b(b[3]), .cin(carry[3]), .sum(sum[3]), .cout(carry[4]));

endmodule