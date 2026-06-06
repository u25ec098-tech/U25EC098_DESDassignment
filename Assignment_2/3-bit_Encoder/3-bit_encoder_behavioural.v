module encoder (
    input [7:0] in,
    output reg [2:0] out,
    output reg v
);

    always @(*) begin
        case (in)

            8'b00000001: begin out = 3'b000; v = 1; end
            8'b00000010: begin out = 3'b001; v = 1; end
            8'b00000100: begin out = 3'b010; v = 1; end
            8'b00001000: begin out = 3'b011; v = 1; end
            8'b00010000: begin out = 3'b100; v = 1; end
            8'b00100000: begin out = 3'b101; v = 1; end
            8'b01000000: begin out = 3'b110; v = 1; end
            8'b10000000: begin out = 3'b111; v = 1; end
            default: begin out = 3'b000; v = 0; end
        endcase
    end

endmodule