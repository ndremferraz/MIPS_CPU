`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 03:02:23 AM
// Design Name: 
// Module Name: memory
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


module memory(memWrite, memRead, Address, DataWrite,ReadData);
    
    //memWrite set for sw
    //memRead set for lw 
    input memWrite, memRead;
    
    //Address contains is the input to the memory decoder 
    //DataWrite is the word that will be stored in memory
    input[31:0] Address, DataWrite; 

    //The data read from memory    
    output reg[31:0] ReadData;

    //unified memory of 2^16 bytes, approximately 65kB
    reg[7:0] memory[65535:0];
    
    
    always @(memWrite, memRead, Address, DataWrite) begin
        
        if(memRead) begin
            //big endian: usign address of left-most bit as the word address
            ReadData[31:24] = memory[Address];
            ReadData[23:16] = memory[Address-1];
            ReadData[15:8] = memory[Address-2];  
            ReadData[7:0] = memory[Address-3];
        end
        
        if(memWrite) begin
            memory[Address] = dataWrite[31:24];
            memory[Address-1] = dataWrite[23:16];
            memory[Address-2] = dataWrite[15:8];
            memory[Address-3] = dataWrite[7:0];
        end 
   end 
            
        
endmodule
