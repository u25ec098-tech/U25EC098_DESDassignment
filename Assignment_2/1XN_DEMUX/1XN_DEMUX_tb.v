`timescale 1ns/1ps

module DEMUX_tb ();

    parameter N = 8;
    parameter S = $clog2(N);

    reg in;
    reg [S-1:0] sel;
    wire [N-1:0] out;

    DEMUX #(
        .N(N)
    ) uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    integer i;

    initial begin
        
        in = 0; sel = 0; #10;

        in = 1;

        for (i = 0; i < N; i = i + 1) begin
            sel = i; #10;
        end

        in = 0;

        for (i = N-1; i >= 0; i = i - 1) begin
            sel = i; #10;
        end

        $finish;
    end


endmodule