module comp (
    input [1:0] a,
    input [1:0] b,
    output e, // a < b
    output f, // a = b
    output g  // a > b
);

    always @(*) begin
        if (a < b) begin
            e = 1;
            f = 0;
            g = 0;
        end else if (a > b) begin
            e = 0;
            f = 0;
            g = 1;
        end else begin
            e = 0;
            f = 1;
            g = 0;
        end
    end

endmodule