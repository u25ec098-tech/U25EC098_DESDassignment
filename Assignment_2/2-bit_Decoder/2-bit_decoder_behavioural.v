module decoder (
    input [1:0] in,
    input en,
    output [3:0] out
);

    always @(*) begin
        
        if (en) begin
            out = (4'b0001 << in);
        end else begin
            out = 4'b0000;
        end
    end

endmodule