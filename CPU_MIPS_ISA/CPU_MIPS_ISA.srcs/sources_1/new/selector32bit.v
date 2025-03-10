`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 02:38:27 PM
// Design Name: 
// Module Name: selector32bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module selector32bit(
                    input wire[31:0] A, B, 
                    input wire selector,
                    output reg[31:0] out);
                    
                    
    always @(*) begin
        case(selector) 
            1'b0: out <= A;
            1'b1: out <= B; 
        endcase
    end 
endmodule
