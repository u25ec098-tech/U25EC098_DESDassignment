module MUX #(
    parameter N = 8,
    parameter S = $clog2(N)
)(
    input wire [N-1:0] in,
    input wire [S-1:0] sel,
    output reg out
);

    always @(*) begin

        out = in[sel];
    end

endmodule