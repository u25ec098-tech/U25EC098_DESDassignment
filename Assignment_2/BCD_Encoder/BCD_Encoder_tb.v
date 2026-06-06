`timescale 1ns/1ps

module encoder_tb ();

    reg [9:0] in;
    wire v;
    wire [3:0] out;

    encoder uut (
        .in(in),
        .v(v),
        .out(out)
    );

    initial begin
        
        in = 9'b000000000; #10;
        in = 9'b000000001; #10;
        in = 9'b000000010; #10;
        in = 9'b000000100; #10;
        in = 9'b000001000; #10;
        in = 9'b000010000; #10;
        in = 9'b000100000; #10;
        in = 9'b001000000; #10;
        in = 9'b010000000; #10;
        in = 9'b100000000; #10;
        in = 9'b001100000; #10;
        in = 9'b001000110; #10;

        $finish;
    end

endmodule