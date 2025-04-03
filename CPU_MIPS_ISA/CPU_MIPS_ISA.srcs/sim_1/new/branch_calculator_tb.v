`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2025 05:19:48 PM
// Design Name: 
// Module Name: branch_calculator_tb
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


module branch_calculator_tb;

    reg branch, zero; 
    reg[15:0] instruction;
    reg[31:0] pc;
    
    wire[31:0] pc_next;
    
    branch_calculator dut(
                                 .branch(branch),
                                 .zero(zero),
                                 .instruction(instruction),
                                 .pc(pc),
                                 .pc_next(pc_next) );
                                 
     initial begin
     
     #1 branch = 0; zero = 1; instruction = 5; pc = 0;
     #1 branch = 1; zero = 1; 
     #1 branch = 1; zero = 0; 
     #1 branch = 0; zero = 0;  
      
     end 
    
endmodule
