`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 04:58:33 PM
// Design Name: 
// Module Name: controls_plus_register
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


module controls_plus_register(
    input wire clk, 
    input wire[31:0] instruction, write_data,
    output wire branch, MemRead, MemtoReg, MemWrite,
    output wire[3:0] ALUCtl,
    output wire[31:0] alu_input1, alu_input2);
    
    wire[1:0] ALUOp;
    wire RegDst, ALUsrc, RegWrite;
    wire[4:0] write_reg;
    wire[31:0] data2;
    
    
    
    selector32bit alu_input_sel(
                        .A(data2),
                        .B( {16'd0, instruction[15:0]}  ),
                        .selector(ALUsrc),
                        .out(alu_input2));
                        
    selector5bit write_reg_selector(
                        .A(instruction[20:16]), 
                        .B(instruction[15:11]),
                        .selector(RegDst),
                        .out(write_reg));
                        
    
    control_unit main_ctrl(
                       .opCode(instruction[31:26]),
                       .destination_register(RegDst),
                       .branch(branch),
                       .memory_read(MemRead),
                       .memory_write(MemWrite),
                       .ALU_source(ALUsrc),
                       .memory_to_register(MemtoReg),
                       .register_write(RegWrite),
                       .ALUOp(ALUOp));
                       
     ALUControl alu_ctrl(
                       .ALUOp(ALUOp),
                       .FuncCode(instruction[5:0]),
                       .ALUCtl(ALUCtl));
                       
    register32x32bit registerFile(
                        .clk(clk),
                        .write_enable(RegWrite),
                        .read1(instruction[25:21]),
                        .read2(instruction[20:16]),
                        .write_reg(write_reg),
                        .write_data(write_data),
                        .data1(alu_input1),
                        .data2(data2));
                        
     
                       
                       
endmodule
