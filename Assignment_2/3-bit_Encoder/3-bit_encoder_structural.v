module encoder (
    input [7:0] in,
    output [2:0] out,
    output v
);

    wire v1, v2, v3, v4, v5, v6, v7, v8;

    or o1 (out[0], in[1], in[3], in[5], in[7]);
    or o2 (out[1], in[2], in[3], in[6], in[7]);
    or o3 (out[2], in[4], in[5], in[6], in[7]);

    and a1 (v1, ~in[7], ~in[6], ~in[5], ~in[4], ~in[3], ~in[2], ~in[1], in[0],);
    and a2 (v2, ~in[7], ~in[6], ~in[5], ~in[4], ~in[3], ~in[2], in[1], ~in[0],);
    and a3 (v3, ~in[7], ~in[6], ~in[5], ~in[4], ~in[3], in[2], ~in[1], ~in[0],);
    and a4 (v4, ~in[7], ~in[6], ~in[5], ~in[4], in[3], ~in[2], ~in[1], ~in[0],);
    and a5 (v5, ~in[7], ~in[6], ~in[5], in[4], ~in[3], ~in[2], ~in[1], ~in[0],);
    and a6 (v6, ~in[7], ~in[6], in[5], ~in[4], ~in[3], ~in[2], ~in[1], ~in[0],);
    and a7 (v7, ~in[7], in[6], ~in[5], ~in[4], ~in[3], ~in[2], ~in[1], ~in[0],);
    and a8 (v8, in[7], ~in[6], ~in[5], ~in[4], ~in[3], ~in[2], ~in[1], ~in[0],);

    or o4 (v, v1, v2, v3, v4, v5, v6, v7, v8);

endmodule