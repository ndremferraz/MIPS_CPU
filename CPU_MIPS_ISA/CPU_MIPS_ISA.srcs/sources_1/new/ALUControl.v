`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2025 04:53:23 PM
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
                input[1:0] ALUOp,
                input[5:0] FuncCode,
                output reg[3:0] ALUClt);
    
    always @(*) begin
       case(FuncCode)
            32: ALUOp <= 2;
            34: ALUOp <= 6;
            36: ALUOp <= 0;
            37: ALUOp <= 1;
            39: ALUOp <= 12;
            42: ALUOp <= 7;
            default: ALUOp <= 15;
        endcase
    end
    
    
endmodule
