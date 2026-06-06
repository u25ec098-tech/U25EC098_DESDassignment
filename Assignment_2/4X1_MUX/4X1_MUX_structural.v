module MUX (
    input [3:0] in,
    input [1:0] sel,
    output out
);

    wire v1, v2, v3, v4;

    and a1 (v1, in[0], ~sel[1], ~sel[0]);
    and a2 (v2, in[1], ~sel[1], sel[0]);
    and a3 (v3, in[2], sel[1], ~sel[0]);
    and a4 (v4, in[3], sel[1], sel[0]);

    or o1 (out, v1, v2, v3, v4);

endmodule