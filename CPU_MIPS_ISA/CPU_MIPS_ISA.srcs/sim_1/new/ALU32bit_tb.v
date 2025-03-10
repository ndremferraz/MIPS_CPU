`timescale 1ns / 1ps


module ALU32bit_tb;

    reg[3:0] ALUctl;
    reg[31:0] A, B;
    wire[31:0] ALUout;
    wire zero;
    
    integer i,j;
    
    ALU32bit alu(ALUctl, A, B, ALUout, zero);
    
    initial begin
        #1 ALUctl =2; A = 0;
        for(i = 0; i < 32; i = i + 1) begin
            B = 0; 
            for(j = 0; j < 32; j = j + 1) begin 
                #1 B = B + 32'd1; 
            end
            #1 A = A + 32'd1;
        end  
        
        #1 ALUctl =6; A = 0;
        for(i = 0; i < 32; i = i + 1) begin
            B = 0; 
            for(j = 0; j < 32; j = j + 1) begin 
                #1 B = B + 32'd1; 
            end
            #1 A = A + 32'd1;
        end
        
             
        
    end  
    
        
    
    
    
    
endmodule
