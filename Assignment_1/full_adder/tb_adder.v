`timescale 1ns / 1ps

module tb_adder();

    reg [2:0] a;
    reg [2:0] b;
    reg cin;
    wire [2:0] sum;
    wire cout;

    adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        a = 3'b000; b = 3'b000; cin = 0; #10;
        a = 3'b000; b = 3'b001; cin = 0; #10;
        a = 3'b110; b = 3'b010; cin = 0; #10;
        a = 3'b101; b = 3'b110; cin = 0; #10;
        a = 3'b010; b = 3'b100; cin = 0; #10;
        a = 3'b011; b = 3'b110; cin = 0; #10;
        a = 3'b000; b = 3'b000; cin = 1; #10;
        a = 3'b000; b = 3'b001; cin = 1; #10;
        a = 3'b110; b = 3'b010; cin = 1; #10;
        a = 3'b101; b = 3'b110; cin = 1; #10;
        a = 3'b010; b = 3'b100; cin = 1; #10;
        a = 3'b011; b = 3'b110; cin = 1; #10;

        $finish;
    end

endmodule