module adder (
    input  [2:0] a,
    input  [2:0] b,
    input  cin,
    output reg [2:0] sum,
    output reg cout    
);

    always @(*) begin
        
        {cout, sum} = a + b + cin;
    end

endmodule