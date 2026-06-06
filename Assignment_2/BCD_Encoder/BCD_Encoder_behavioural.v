module encoder (
    input [9:0] in,
    output reg v,
    output reg [3:0] out
);

    always @(*) begin
        v = 1'b1;

        if (in[9]) out = 4'b1001;
        else if (in[8]) out = 4'b1000;
        else if (in[7]) out = 4'b0111;
        else if (in[6]) out = 4'b0110;
        else if (in[5]) out = 4'b0101;
        else if (in[4]) out = 4'b0100;
        else if (in[3]) out = 4'b0011;
        else if (in[2]) out = 4'b0010;
        else if (in[1]) out = 4'b0001;
        else if (in[0]) out = 4'b0000;
        else begin
            out = 4'b0000;
            v = 1'b0;
        end
    end

endmodule