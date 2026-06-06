`timescale 1ns/1ps

module tb_decoder();

    reg [1:0] in;
    reg en;
    wire [3:0] out;

    decoder uut(
        .in(in),
        .en(en),
        .out(out)
    );

    initial begin

        in = 2'b11; en = 0; #10;
        in = 2'b00; en = 1; #10;
        in = 2'b01; en = 1; #10;
        in = 2'b10; en = 1; #10;
        in = 2'b11; en = 1; #10;

        $finish;
    end

endmodule
