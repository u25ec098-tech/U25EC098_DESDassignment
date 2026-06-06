`timescale 1ns/1ps

module and_tb ();

    reg a;
    reg b;
    wire out;
    
    and_gate uut(
        .a(a),
        .b(b),
        .out(out)
    );  

    initial begin
        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10; 

        $finish;

    end

endmodule