module DEMUX (
    input in,
    input [1:0] sel,
    output [3:0] out
);

    and a0 (out[0], in, ~sel[1], ~sel[0]);
    and a1 (out[1], in, ~sel[1], sel[0]);
    and a2 (out[2], in, sel[1], ~sel[0]);
    and a3 (out[3], in, sel[1], sel[0]);

endmodule