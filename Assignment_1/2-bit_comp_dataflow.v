module comp (
    input  [1:0] a,
    input  [1:0] b,
    output  e,  // a < b
    output  f,  // a = b
    output  g   // a > b
);

    assign  e = (a < b);
    assign  f = (a == b);
    assign  g = (a > b);

endmodule