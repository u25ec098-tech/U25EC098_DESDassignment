module DEMUX (
    input in,
    input sel,
    output [1:0] out
);

    and a1 (out[1], in, sel);
    and a2 (out[0], in, ~sel);

endmodule