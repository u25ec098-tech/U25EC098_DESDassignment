module encoder (
    input [3:0] in,
    output [1:0] out,
    output v
);

    assign out[1] = in[2] | in[3];
    assign out[0] = in[1] | in[3];
    
    assign v = (~in[3] & ~in[2] & ~in[1] &  in[0]) | 
               (~in[3] & ~in[2] &  in[1] & ~in[0]) | 
               (~in[3] &  in[2] & ~in[1] & ~in[0]) | 
               ( in[3] & ~in[2] & ~in[1] & ~in[0]);

endmodule