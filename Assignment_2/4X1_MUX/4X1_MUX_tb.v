`timescale 1ns/1ps

module tb_MUX();

    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    MUX uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin

        in = 0000; sel = 00; #10;
        in = 0101; sel = 00; #10;
        in = 0110; sel = 00; #10;
        in = 1111; sel = 00; #10;
        in = 1000; sel = 01; #10;
        in = 0011; sel = 01; #10;
        in = 1110; sel = 01; #10;
        in = 1101; sel = 01; #10;
        in = 0000; sel = 10; #10;
        in = 0101; sel = 10; #10;
        in = 0110; sel = 10; #10;
        in = 1111; sel = 10; #10;
        in = 1000; sel = 11; #10;
        in = 0011; sel = 11; #10;
        in = 1110; sel = 11; #10;
        in = 1101; sel = 11; #10;

        $finish;
    end

endmodule