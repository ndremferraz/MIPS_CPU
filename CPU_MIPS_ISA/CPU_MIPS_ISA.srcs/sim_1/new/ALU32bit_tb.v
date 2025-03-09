`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2025 05:00:47 PM
// Design Name: 
// Module Name: ALU32bit_tb
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


module ALU32bit_tb;

    reg[3:0] ALUctl;
    reg[31:0] A, B;
    wire[31:0] ALUout;
    wire zero;
    
    integer i,j;
    
    ALU32bit alu(ALUctl, A, B, ALUout, zero);
    
    initial begin
        //testing addition 
        ALUctl = 4'd2; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== i + j) $display("Test Failed ADD");
                    #5 B = B + 32'd1;
                end
                #5 B = 32'd0; A = A + 32'd1; 
            end
            
          //testing subtraction 
        ALUctl = 4'd6; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                #5 A = A + 32'd1; 
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== i -  j) $display("Test Failed SUB");
                    #5 B = B + 32'd1;
                end
            end
            
         //testing AND 
        ALUctl = 4'd0; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                #5 A = A + 32'd1; 
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== i &  j) $display("Test Failed AND");
                    #5 B = B + 32'd1;
                end
            end
            
        //testing OR 
        ALUctl = 4'd1; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                #5 A = A + 32'd1; 
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== i |  j) $display("Test Failed OR");
                    #5 B = B + 32'd1;
                end
            end 
            
         //testing SET ON LESS 
        ALUctl = 4'd7; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                #5 A = A + 32'd1; 
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== i < j) $display("Test Failed %d < %d", i,j);
                    #5 B = B + 32'd1;
                end
            end
            
        //testing NOR 
        ALUctl = 4'd12; A = 32'd0; B = 32'd0;
            for(i = 0; i <32; i = i + 1) begin
                #5 A = A + 32'd1; 
                for(j = 0; j<32; j = j + 1) begin 
                    if(ALUout !== ~(i | j)) $display("Test Failed %d  nor %d NOR", i, j); 
                    #5 B = B + 32'd1;
                end
            end                                    
    end  
    
endmodule
