`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2025 11:04:26 PM
// Design Name: 
// Module Name: ALUControl_tb
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


module ALUControl_tb;

     reg[1:0] ALUOp; 
     reg[5:0] FuncCode;
     
     wire[3:0] ALUCtl;
     
     ALUControl dut(ALUOp, FuncCode, ALUCtl);
     
     initial begin 
        #1 ALUOp = 0; FuncCode = 0; 
        if(ALUCtl !== 2) $display("Error");
        
        #1 ALUOp = 1; 
        if(ALUCtl !== 6) $display("Error");
        
        #1 ALUOp =2; FuncCode = 32;
        #1 FuncCode = 34;
        #1 FuncCode = 36;
        #1 FuncCode = 37;
        #1 FuncCode = 39;
        #1 FuncCode = 42;
        
    end        
            
endmodule
