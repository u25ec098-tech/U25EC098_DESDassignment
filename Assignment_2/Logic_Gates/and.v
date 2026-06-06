module MUX  (
    input [1:0] in,
    input sel,
    output out
);

    assign out = (sel) ? in[1] : in[0];

endmodule

module and_gate (
    input a,
    input b,
    output out
);

    MUX m1 (.out(out), .in({b, 1'b0}), .sel(a)); 

endmodule