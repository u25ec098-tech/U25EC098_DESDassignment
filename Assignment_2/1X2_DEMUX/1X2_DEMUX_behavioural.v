module DEMUX (
    input in,
    input sel,
    output reg [1:0] out
);

    always @(*) begin
        out = 2'b00;
        if (sel) begin
            out[1] = in;
        end else begin
            out[0] = in;
        end
    end

endmodule