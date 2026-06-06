module DEMUX (
    input in,
    input sel,
    output [1:0] out
);

    assign out[1] = in & sel;
    assign out[0] = in & (~sel);

endmodule