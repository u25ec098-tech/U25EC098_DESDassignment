`timescale 1ns/1ps

module tb_DEMUX();

    reg in;
    reg [1:0] sel;
    wire [3:0] out;

    DEMUX uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin

        in = 0; sel = 00; #10;
        in = 0; sel = 01; #10;
        in = 0; sel = 10; #10;
        in = 0; sel = 11; #10;
        in = 1; sel = 00; #10;
        in = 1; sel = 01; #10;
        in = 1; sel = 10; #10;
        in = 1; sel = 11; #10;

        $finish;
    end

endmodule