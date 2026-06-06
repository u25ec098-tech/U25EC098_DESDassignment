module MUX (
    input [1:0] in,
    input sel,
    output out
);

    assign out = (in[1] & sel) | (in[0] & (~sel));

endmodule