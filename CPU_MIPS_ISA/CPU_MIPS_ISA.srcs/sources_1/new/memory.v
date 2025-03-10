`timescale 1ns / 1ps


module memory(
                    input wire clk,
                    input wire write, 
                    input wire read, 
                    input wire[31:0] ALU_result_address,
                    input wire[31:0] write_data,
                    output reg[31:0] read_data);
                                 
    reg[7:0] memory[1023:0];
    
    //writes on positive clk edge 
    always @(posedge clk) begin
        if(write) begin
            //big endian: using address of left-most bit as the word address
            memory[ALU_result_address] = write_data[31:24];
            memory[ALU_result_address-1] = write_data[23:16];
            memory[ALU_result_address-2] = write_data[15:8];
            memory[ALU_result_address-3] = write_data[7:0];  
        
        end  
   end
   
   //reads at anytime in the clock cycle 
    always @(*) begin 
        if(read) begin                             
            read_data[31:24] = memory[ALU_result_address];        
            read_data[23:16] = memory[ALU_result_address-1];
            read_data[15:8] = memory[ALU_result_address-2];
            read_data[7:0] = memory[ALU_result_address-3];
        end
    end        
                
endmodule
