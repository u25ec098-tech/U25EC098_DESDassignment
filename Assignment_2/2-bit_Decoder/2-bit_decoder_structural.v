module decoder (
    input [1:0] in,
    input en,
    output [3:0] out
);

    wire [1:0] n_in;

    not n1 (n_in[1], in[1]);
    not n2 (n_in[0], in[0]);

    and a1 (out[0], en, n_in[1], n_in[0]);
    and a2 (out[1], en, n_in[1], in[0]);
    and a3 (out[2], en, in[1], n_in[0]);
    and a4 (out[3], en, in[1], in[0]);


endmodule