module decoder (
    input [2:0] in,
    input en,
    output [7:0] out
);

    wire [2:0] n_in;

    not n1 (n_in[2], in[2]);
    not n2 (n_in[1], in[1]);
    not n3 (n_in[0], in[0]);

    and a1 (out[0], en, n_in[2], n_in[1], n_in[0]);
    and a2 (out[1], en, n_in[2], n_in[1], in[0]);
    and a3 (out[2], en, n_in[2], in[1], n_in[0]);
    and a4 (out[3], en, n_in[2], in[1], in[0]);
    and a5 (out[4], en, in[2], n_in[1], n_in[0]);
    and a6 (out[5], en, in[2], n_in[1], in[0]);
    and a7 (out[6], en, in[2], in[1], n_in[0]);
    and a8 (out[7], en, in[2], in[1], in[0]);

endmodule