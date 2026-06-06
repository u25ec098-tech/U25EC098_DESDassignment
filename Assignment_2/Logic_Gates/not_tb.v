`timescale 1ns/1ps

module not_tb ();

    reg a;
    wire out;
    
    not_gate uut(
        .a(a),
        .out(out)
    );  

    initial begin
        
        a = 0; #10;
        a = 1; #10;

        $finish;

    end

endmodule