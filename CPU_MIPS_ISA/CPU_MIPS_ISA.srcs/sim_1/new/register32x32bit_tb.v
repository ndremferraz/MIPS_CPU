`timescale 1ns / 1ps


module register32x32bit_tb;
    
    
    reg clk, write_enable;
    reg[4:0] read1, read2, write_reg;
    reg[31:0] write_data;
    wire[31:0] data1, data2;
    
    integer i = 0;
    
    register32x32bit registerfile(
            clk,
            write_enable, 
            read1,read2,write_reg,
            write_data, data1, data2);
    
    initial begin
    #5 clk = 0; write_enable = 1; read1 = 5'd0; read2=5'd0; write_reg = 5'd0; write_data =32'd0;
    
    //will write to each register its respective number
    for(i=0;i<32;i = i + 1) begin
        #5 clk = ~clk;
        #5 write_reg = write_reg + 1; write_data = write_data + 1; clk = ~clk; 
    
    end 
        
    #5 write_enable = 0; read1 = 5'd0; read2 = 5'd1;
    
    //will read from each register and should output its respective number  
    for(i=0;i<32; i = i + 2) begin
        #5 clk = ~clk;
        #5 clk = ~clk; read1 = read1 + 5'd2; read2 = read2 + 5'd2;
        if(data1 == i && data2 == i + 1) $display("Test Successful i = %d", i);
        else $display("Test Failed i = %d", i);
    
    end
    
    
    end  
    
        
    
    

endmodule
