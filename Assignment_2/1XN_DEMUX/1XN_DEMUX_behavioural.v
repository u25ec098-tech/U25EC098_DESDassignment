module DEMUX #(
    parameter N = 8,
    parameter S = $clog2(N) 
)(
    input in,
    input [S-1:0] sel,
    output reg [N-1:0] out
);

    always @(*) begin
        
        out = {N{1'b0}};
        out[sel] = in;

    end

endmodule