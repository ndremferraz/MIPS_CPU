`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 08:19:56 PM
// Design Name: 
// Module Name: ALU_plus_dataMem
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


module ALU_plus_dataMem(
            input wire clk,
            input wire[3:0] ALUctl,
            input wire[31:0] read1, read2,
            input wire MemWrite, MemRead, MemtoReg,
            output wire[31:0] data_out,
            output wire zero);
            
            wire[31:0] ALUout;
            wire[31:0] read_data;
            
            ALU32bit main_alu(
                            .ALUctl(ALUctl),
                            .A(read1), .B(read2),
                            .ALUout(ALUout));
                            
            memory dataMem(
                            .clk(clk),
                            .write(MemWrite),
                            .read(MemRead),
                            .ALU_result_address(ALUout),
                            .write_data(read2),
                            .read_data(read_data));
                            
             selector32bit MemtoReg_sel(
                            .A(ALUout), .B(read_data),
                            .selector(MemtoReg), .out(data_out));
                            
endmodule
