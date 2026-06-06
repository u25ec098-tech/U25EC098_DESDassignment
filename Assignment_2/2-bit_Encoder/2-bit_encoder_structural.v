module encoder (
    input [3:0] in,
    output [1:0] out,
    output v
);

    wire v1, v2, v3, v4;

    or o1 (out[1], in[2], in[3]);
    or o2 (out[0], in[1], in[3]);

    and a1 (v1, ~in[3], ~in[2], ~in[1], in[0]);
    and a2 (v2, ~in[3], ~in[2], in[1], ~in[0]);
    and a3 (v3, ~in[3], in[2], ~in[1], ~in[0]);
    and a4 (v4, in[3], ~in[2], ~in[1], ~in[0]);

    or o3 (v, v1, v2, v3, v4);

endmodule