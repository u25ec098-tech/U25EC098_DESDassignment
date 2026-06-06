module encoder (
    input [7:0] in,
    output [2:0] out,
    output v
);

    assign v = (in == 8'b00000001) | 
            (in == 8'b00000010) | 
            (in == 8'b00000100) | 
            (in == 8'b00001000) | 
            (in == 8'b00010000) | 
            (in == 8'b00100000) | 
            (in == 8'b01000000) | 
            (in == 8'b10000000);

    assign y[0] = in[1] | in[3] | in[5] | in[7];
    assign y[1] = in[2] | in[3] | in[6] | in[7];
    assign y[2] = in[4] | in[5] | in[6] | in[7];

endmodule