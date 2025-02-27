`timescale 1ns / 1ps


module fullAdder(a, b, cin, sum, cout);

    input a,b,cin;
    output sum, cout;
    
    assign cout = (b & cin) | (a & cin) | (a & b);
    assign sum = (a ^ b ^ cin);
    
     
    
endmodule
