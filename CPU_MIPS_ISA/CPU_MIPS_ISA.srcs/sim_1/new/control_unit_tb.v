`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 12:53:28 PM
// Design Name: 
// Module Name: control_unit_tb
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


module control_unit_tb;

    reg[5:0] opCode;
    wire dstReg, branch, memRead, memWrite, ALU_source, memory_to_register, register_write;
    wire[1:0] ALUOp;
    
    control_unit dut(
                    opCode, 
                    dstReg, branch, 
                    memRead, memWrite,
                    ALU_source, memory_to_register,
                    register_write, ALUOp);
    
    
    initial begin
        #1 opCode = 6'd0;
        
        #1 opCode = 6'b100011;
        
        #1 opCode = 6'b101011;
        
        #1 opCode = 6'b000100; 
    
    end
    
endmodule
