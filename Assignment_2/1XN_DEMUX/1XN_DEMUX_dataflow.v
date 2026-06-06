module DEMUX #(
    parameter N = 8,
    parameter S = $clog2(N) 
)(
    input in,
    input [S-1:0] sel,
    output [N-1:0] out
);

    assign out = {(N-1){1'b0}, in} << sel;

endmodule