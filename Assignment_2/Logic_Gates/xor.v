module MUX  (
    input [1:0] in,
    input sel,
    output out
);

    assign out = (sel) ? in[1] : in[0];

endmodule

module xor_gate (
    input a,
    input b,
    output out
);

    MUX m1 (.out(out), .in({~b, b}), .sel(a)); 

endmodule

