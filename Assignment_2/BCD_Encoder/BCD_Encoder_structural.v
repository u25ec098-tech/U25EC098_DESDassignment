module encoder (
    input [9:0] in,
    output v,
    output [3:0] out
);

    wire [7:0] p;

    and a1 (p[7], in[8], ~in[9]);
    and a2 (p[6], in[7], ~in[9], ~in[8]);
    and a3 (p[5], in[6], ~in[9], ~in[8], ~in[7]);
    and a4 (p[4], in[5], ~in[9], ~in[8], ~in[7], ~in[6]);
    and a5 (p[3], in[4], ~in[9], ~in[8], ~in[7], ~in[6], ~in[5]);
    and a6 (p[2], in[3], ~in[9], ~in[8], ~in[7], ~in[6], ~in[5], ~in[4]);
    and a7 (p[1], in[2], ~in[9], ~in[8], ~in[7], ~in[6], ~in[5], ~in[4], ~in[3]);
    and a8 (p[0], in[1], ~in[9], ~in[8], ~in[7], ~in[6], ~in[5], ~in[4], ~in[3], ~in[2]);

    or o1 (out[3], in[9], p[7]);
    or o2 (out[2], p[6], p[5], p[4], p[3]);
    or o3 (out[1], p[6], p[5], p[2], p[1]);
    or o4 (out[0], in[9], p[6], p[4], p[2], p[0]);

    or o5 (v, in[9], in[8], in[7], in[6], in[5], in[4], in[3], in[2], in[1], in[0]);
    
endmodule