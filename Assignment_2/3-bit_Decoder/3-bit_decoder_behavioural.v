module decoder (
    input [2:0] in,
    input en,
    output [7:0] out
);

    always @(*) begin
        
        if (en) begin
            out = (8'b00000001 << in);
        end else begin
            out = 8'b00000000;
        end
    end

endmodule