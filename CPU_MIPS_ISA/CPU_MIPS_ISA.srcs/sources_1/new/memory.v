`timescale 1ns / 1ps


module memory(
                    input wire clk,
                    input wire write, 
                    input wire read, 
                    input wire[31:0] ALU_result_address,
                    input wire[31:0] write_data,
                    output reg[31:0] read_data);
                                 
    reg[7:0] memory[1023:0];
    
    always @(*) begin //inserting instructions and data to test CPU
        
        //inserting data, starting at 0 so $zero can be used as base
        
        {memory[7],memory[6], memory[5], memory[4]}  =  32'd8; //number2 at loc4 = 8
        {memory[11],memory[10], memory[9], memory[8]}  =  32'd4; //number3 at loc8 = 4
        {memory[15],memory[14], memory[13], memory[12]}  =  32'd8; //number4 at loc12 = 8
        
        //inserting instructions
       {memory[515],memory[514], memory[513], memory[512]}  =  { 6'd35, 5'd0, 5'd9, 16'd4};  //load into r9($t1) data from memory loc4
       {memory[519],memory[518], memory[517], memory[516]}  =  { 6'd35, 5'd0, 5'd10, 16'd8}; //load into r10($t2) data from memory loc8
       {memory[523],memory[522], memory[521], memory[520]}  =  { 6'd35, 5'd0, 5'd11, 16'd12}; //load into r9($t3) data from memory loc12
       
       {memory[527],memory[526], memory[525], memory[524]}  =  { 6'd0, 5'd8, 5'd9, 5'd10, 5'd0, 6'd32};  //add $t0, $t1, $t2
       {memory[531],memory[530], memory[529], memory[528]}  =  { 6'd0, 5'd9, 5'd10, 5'd11, 5'd0, 6'd37}; //or $t1, $t2, $t3
       {memory[535],memory[534], memory[533], memory[532]}  =  { 6'd4, 5'd8, 5'd9, 16'd3}; // beq $t0, $t1, 1
       
       {memory[553],memory[552], memory[551], memory[550]}  =  { 6'd43, 5'd0, 5'd8, 16'd0};  //store r8($t0) to loc0
       {memory[557],memory[556], memory[555], memory[554]}  =  { 6'd43, 5'd0, 5'd9, 16'd4};  //store r9($t1) to loc4
       {memory[561],memory[560], memory[559], memory[558]}  =  { 6'd43, 5'd0, 5'd10, 16'd8}; //store r10($t2) to loc8
       {memory[565],memory[564], memory[563], memory[562]}  =  { 6'd43, 5'd0, 5'd11, 16'd12}; //store r11($t3) to loc12
       
    end
    
    //writes on positive clk edge 
    always @(posedge clk) begin
        if(write) begin
            //to make testing easier, I changed from big endian to little endian 
            //using the first byte as the base
            memory[ALU_result_address+3] = write_data[31:24];
            memory[ALU_result_address+2] = write_data[23:16];
            memory[ALU_result_address+1] = write_data[15:8];
            memory[ALU_result_address] = write_data[7:0];  
        
        end  
   end
   
   //reads at anytime in the clock cycle 
    always @(*) begin 
        if(read) begin                             
            read_data[31:24] = memory[ALU_result_address+3];        
            read_data[23:16] = memory[ALU_result_address+2];
            read_data[15:8] = memory[ALU_result_address+1];
            read_data[7:0] = memory[ALU_result_address];
        end
    end        
                
endmodule
