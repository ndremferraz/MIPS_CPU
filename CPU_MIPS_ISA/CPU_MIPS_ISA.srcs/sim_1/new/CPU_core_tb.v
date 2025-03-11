`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 11:28:56 PM
// Design Name: 
// Module Name: CPU_core_tb
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


module CPU_core_tb;

    reg clk, instruction_write, instruction_read;
    reg[31:0] instruction_in;
    
    wire[31:0] program_couter, instruction_out, dataMemOut, dataMemAddress, dataMemIn; 
    wire dataMemWrite, dataMemRead;
    
    
    
    memory mem_instruction( .clk(clk), 
                                            .write(instrcution_write),
                                            .read(instruction_read),
                                            .ALU_result_address(program_couter),
                                            .write_data(instruction_in),
                                            .read_data(instruction_out));
                                            
    CPU_core cpu(.clk(clk),
                          .dataMemDataOut(dataMemOut),
                          .instruction(instruction_out),
                          .program_counter(program_counter),
                          .dataMemWrite(dataMemWrite),
                          .dataMemRead(dataMemRead),
                          .dataMemAddress(dataMemAddress),
                          .dataMemDataIn(dataMemIn));                                        
                                            
    memory mem_data(   .clk(clk), 
                                    .write(dataMemWrite),
                                    .read(dataMemRead),
                                    .ALU_result_address(dataMemAddress),
                                    .write_data(dataMemIn),
                                    .read_data(dataMemOut));
    
    
endmodule
