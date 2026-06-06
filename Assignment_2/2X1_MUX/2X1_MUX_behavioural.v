module MUX (
    input [1:0] in,
    input sel,
    output reg out
);

    always @(*) begin
        if (sel) begin
            out = in[1];
        end else begin
            out = in[0];
        end
        
    end

endmodule