`timescale 1ns / 1ps

module tb_ripple();

    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    ripple_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0001; b = 4'b0011; cin = 0; #10;
        a = 4'b1100; b = 4'b0100; cin = 0; #10;
        a = 4'b1011; b = 4'b1101; cin = 0; #10;
        a = 4'b0101; b = 4'b1001; cin = 0; #10;
        a = 4'b0110; b = 4'b1101; cin = 0; #10;
        a = 4'b0001; b = 4'b0000; cin = 1; #10;
        a = 4'b0001; b = 4'b0010; cin = 1; #10;
        a = 4'b1100; b = 4'b0101; cin = 1; #10;
        a = 4'b1011; b = 4'b1101; cin = 1; #10;
        a = 4'b0101; b = 4'b1000; cin = 1; #10;
        a = 4'b0110; b = 4'b1101; cin = 1; #10;

        $finish;
    end

endmodule