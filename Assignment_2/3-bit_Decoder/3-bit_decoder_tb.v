`timescale 1ns/1ps

module tb_decoder();

    reg [2:0] in;
    reg en;
    wire [7:0] out;

    decoder uut(
        .in(in),
        .en(en),
        .out(out)
    );

    initial begin

        in = 3'b111; en = 0; #10;
        in = 3'b000; en = 1; #10;
        in = 3'b001; en = 1; #10;
        in = 3'b010; en = 1; #10;
        in = 3'b011; en = 1; #10;
        in = 3'b100; en = 1; #10;
        in = 3'b101; en = 1; #10;
        in = 3'b110; en = 1; #10;
        in = 3'b111; en = 1; #10;

        $finish;
    end

endmodule