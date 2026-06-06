`timescale 1ns/1ps

module tb_encoder();

    reg [3:0] in;
    wire v;
    wire [1:0] out;

    encoder uut(
        .in(in),
        .v(v),
        .out(out)
    );

    initial begin

        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b0110; #10;
        in = 4'b1010; #10;

        $finish;
    end

endmodule