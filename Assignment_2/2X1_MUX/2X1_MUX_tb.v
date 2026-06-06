`timescale 1ns/1ps

module tb_MUX();

    reg [1:0] in;
    reg sel;
    wire out;

    MUX uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin

        in = 00; sel = 0; #10;
        in = 01; sel = 0; #10;
        in = 10; sel = 0; #10;
        in = 11; sel = 0; #10;
        in = 00; sel = 1; #10;
        in = 01; sel = 1; #10;
        in = 10; sel = 1; #10;
        in = 11; sel = 1; #10;

        $finish;
    end

endmodule