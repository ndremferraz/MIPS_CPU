`timescale 1ns / 1ps


module register32x32bit(
                input clk, //clk pulse
                input write_enable, //set when writing data to register
                input wire[4:0] read1, // 5-bit address of the 1st register to read from 
                input wire[4:0] read2, // 5-bit address of the 2nd register to read from 
                input wire[4:0] write_reg, // 5-bit address of the register to write to 
                input wire[31:0] write_data, //data that will be written to register
                output wire[31:0] data1, // data read from 1st read address
                output wire[31:0] data2); // data read from the 2nd read address
                
                
                reg[31:0] register[31:0]; //32x32-bit registers as specified by the architecture 
                
                
                assign data1 = register[read1]; //reads data at address read1 to wire data1
                assign data2 = register[read2]; //reads data at address read2 to wire data2
                 
                 always @(*) register[5'd0] = 32'd0;  //as per MIPS architecture 0th register $zero always stores 0
                 
                 //at positive clock edge will write data to register if write enabled
                always @(posedge clk) if(write_enable) register[write_reg] <= write_data;
                 
endmodule
