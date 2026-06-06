module MUX (
    input [1:0] in,
    input sel,
    output out
);

    wire v1, v2;

    and a1 (v1, in[1], sel);
    and a2 (v2, in[0], ~sel);

    or o1 (out, v1, v2);

endmodule