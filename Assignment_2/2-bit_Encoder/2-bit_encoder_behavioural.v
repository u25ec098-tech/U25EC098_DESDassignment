module encoder (
    input [3:0] in,
    output reg [1:0] out,
    output reg v
);

    always @(*) begin
        case (in)

            4'b0001: begin out = 2'b00; v = 1; end
            4'b0010: begin out = 2'b01; v = 1; end
            4'b0100: begin out = 2'b10; v = 1; end
            4'b1000: begin out = 2'b11; v = 1; end
            default: begin out = 2'b00; v = 0; end
        endcase
    end

endmodule