`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2025 10:25:04 PM
// Design Name: 
// Module Name: memory_tb
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


module memory_tb;

    reg clk, write, read;
    reg[31:0] address, write_data;
    wire[7:0] readbyte0, readbyte1, readbyte2, readbyte3;
    
    integer i = 0;
    
    memory dut(clk, write, read, address, write_data, {readbyte3, readbyte2, readbyte1, readbyte0} );
    
    
    
    initial begin
        #1 clk = 0; write = 1; read = 0; address = 32'd3; write_data =32'd0;
        for(i=3;i<32;i = i + 4) begin
            #1 clk = ~clk;
            #1 address = address + 4; write_data = write_data + 1; clk = ~clk; 
        
        end
        
        
        #1 clk = ~clk; write = 0; read = 1; address = 32'd3; 
        for(i=3;i<32;i = i + 4) begin
            #1 clk = ~clk;
            #1 address = address + 4; clk = ~clk; 
        
        end
        
    end
    
    
    
endmodule
