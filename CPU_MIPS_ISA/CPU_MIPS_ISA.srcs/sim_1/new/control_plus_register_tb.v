`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 07:24:22 PM
// Design Name: 
// Module Name: control_plus_register_tb
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


module control_plus_register_tb;

    reg clk;
    reg[31:0] instruction, write_data;
    
    wire branch, MemRead, MemtoReg, MemWrite;
    wire[3:0] ALUCtl;
    wire[31:0] alu_input1, alu_input2;
    
    controls_plus_register dut(
                          .clk(clk), .instruction(instruction),
                          .write_data(write_data),
                          .branch(branch),
                          .MemRead(MemRead),
                          .MemtoReg(MemtoReg), 
                          .MemWrite(MemWrite),
                          .ALUCtl(ALUCtl),
                          .alu_input1(alu_input1),
                          .alu_input2(alu_input2));
    
    initial begin
    
        //loading data into registers
        #1 clk = 0; instruction = { 6'd35, 5'd0, 5'd9, 16'd4} ; write_data = 32'd4; //lw $t1, 4($zero)
        #1 clk = ~clk;
        
        #1 clk = 0; instruction = { 6'd35, 5'd0, 5'd10, 16'd8} ; write_data = 32'd8; //lw $t2, 8($zero)
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =  { 6'd35, 5'd0, 5'd11, 16'd12} ; write_data = 32'd12; //lw $t2, 8($zero)
        #1 clk = ~clk;
        
        //R-type instructions
        #1 clk = 0; instruction =  { 6'd0, 5'd9, 5'd10, 5'd8, 5'd0, 6'd32} ; //add $t0, $t1, $t2
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =  { 6'd0, 5'd11, 5'd10, 5'd9, 5'd0, 6'd37} ; //or $t1, $t2, $t3
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =   { 6'd4, 5'd8, 5'd9, 16'd3} ; //beq $t0, $t1, 3
        #1 clk = ~clk;
        
        //storing data into memory
         #1 clk = 0; instruction =  { 6'd43, 5'd0, 5'd8, 16'd0} ; //sw $t0, 0($zero)
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =  { 6'd43, 5'd0, 5'd9, 16'd4} ; //sw $t1, 4($zero) 
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =  { 6'd43, 5'd0, 5'd10, 16'd8}; //sw $t2, 8($zero)
        #1 clk = ~clk;
        
        #1 clk = 0; instruction =   { 6'd43, 5'd0, 5'd11, 16'd12} ; //sw $t3, 12($zero)
        #1 clk = ~clk;
        
        
        
        
        
    end
    
endmodule
