`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2025 12:15:32 PM
// Design Name: 
// Module Name: branch_calculator
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


module branch_calculator(input wire branch, zero, 
                                         input wire[15:0] instruction,
                                         input wire[31:0 ]pc,
                                         output wire[31:0] pc_next);
                                         
            wire[31:0] pc_plus_4;
            wire[31:0] offset_extended;
            wire[31:0] pc_offset;
            wire branch_and_zero;
            
            assign branch_and_zero = branch & zero;
            assign pc_plus_4 = pc + 4;
            
            extend_shift signextend(instruction, offset_extended);
            
            assign  pc_offset = offset_extended + pc_plus_4;
            
            selector32bit selector(pc_plus_4, offset_extended, branch_and_zero, pc_next);                       
            
endmodule
