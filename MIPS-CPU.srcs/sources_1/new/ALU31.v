`timescale 1ns / 1ps


module ALU31(a, ainvert, b, binvert, cin, OP, less, x, cout, set);
    input a, b, cin, less, ainvert, binvert;
    input [1:0] OP; 
    
    output  reg x, cout, set;
    reg ainput, binput;
        
    always @(a, b, cin, OP) begin 
    
        ainput = ((~ainvert)*a) + ((ainvert)*(~a));
        binput = ((~binvert)*b) + ((binvert)*(~b));
        
        x = 0;
        cout = 0;
        set = 0;
        
        case(OP)
            2'b00: x = ainput & binput;
            2'b01: x = ainput | binput;
            2'b10: fullAdder(.a(ainput), .b(binput), .cin(cin), .sum(x), .cout(cout));
            2'b11: begin 
                fullAdder(.a(ainput), .b(binput), .cin(cin), .sum(set), .cout(cout));
                x = less;
                   end              
        endcase
    end 
endmodule
