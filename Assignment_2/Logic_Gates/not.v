module MUX  (
    input [1:0] in,
    input sel,
    output out
);

    assign out = (sel) ? in[1] : in[0];

endmodule

module not_gate (
    input a,
    output out
);

    MUX m1 (.out(out), .in({0 , 1}), .sel(a)); 

endmodule