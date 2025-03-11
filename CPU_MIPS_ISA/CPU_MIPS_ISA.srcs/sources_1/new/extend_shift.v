`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 03:01:14 PM
// Design Name: 
// Module Name: extend_shift
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


module extend_shift(input wire[15:0] offset, output reg[31:0] branch_address);
        
        //needed to write offset to branch instruction
        always @(*) branch_address <= {16'd0, offset} << 2;
        
endmodule
