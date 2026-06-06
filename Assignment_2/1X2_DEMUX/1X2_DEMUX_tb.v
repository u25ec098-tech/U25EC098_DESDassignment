`timescale 1ns/1ps

module tb_DEMUX();

    reg in;
    reg sel;
    wire [1:0] out;

    DEMUX uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin

        in = 0; sel = 0; #10;
        in = 0; sel = 1; #10;
        in = 1; sel = 0; #10;
        in = 1; sel = 1; #10;

        $finish;
    end

endmodule