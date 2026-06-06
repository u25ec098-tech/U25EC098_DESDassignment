`timescale 1ns / 1ps

module MUX_tb();

    parameter N = 8;
    parameter S = $clog2(N);

    reg [N-1:0] in;
    reg [S-1:0] sel;
    wire out;

    
    MUX #(
        .N(N)
    ) uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    integer i;

    initial begin

        in = 0; sel = 0; #10; 

        in = 8'b10110100; 
        
        for (i = 0; i < N; i = i + 1) begin
            sel = i;
            #10; 
        end

        sel = 4;

        in = 8'b00000000; #10;
        
        in = 8'b00010000; #10;

        $finish;
    end

endmodule