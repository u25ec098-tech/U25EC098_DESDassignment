module MUX #(
    parameter N = 8,                
    parameter S = $clog2(N)          
)(
    input [N-1:0] in,    
    input [S-1:0] sel,      
    output out                 
);

    assign out = (in >> sel) & 1'b1;

endmodule