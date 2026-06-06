module encoder (
    input [9:0] in,
    output v,
    output [3:0] out
);

    assign out = in[9] ? 4'b1001 :
                in[8] ? 4'b1000 :
                in[7] ? 4'b0111 :
                in[6] ? 4'b0110 :
                in[5] ? 4'b0101 :
                in[4] ? 4'b0100 :
                in[3] ? 4'b0011 :
                in[2] ? 4'b0010 :
                in[1] ? 4'b0001 :
                in[0] ? 4'b0000 :
                        4'b0000;

    assign v = |in;
    
endmodule