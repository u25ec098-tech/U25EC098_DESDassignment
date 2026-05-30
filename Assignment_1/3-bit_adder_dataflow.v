module adder (
    input [2:0] a,
    input [2:0] b,
    input cin,
    output [2:0] sum,
    output cout
);

    assign {cout, sum} = a + b + cin;

endmodule