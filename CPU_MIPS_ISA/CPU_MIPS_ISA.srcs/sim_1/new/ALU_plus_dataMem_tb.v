`timescale 1ns / 1ps


module ALU_plus_dataMem_tb;
    
    reg clk,MemWrite, MemRead, MemtoReg;
    
    reg[31:0] read1, read2;
    reg[3:0] broken_Reg;
    
    wire zero;
    wire[31:0] data_out;
    
    ALU_plus_dataMem dut(
                    .clk(clk),
                    .ALUctl(broken_Reg),
                    .read1(read1),
                    .read2(read2),
                    .MemWrite(MemWrite),
                    .MemRead(MemRead),
                    .MemtoReg(MemtoReg),
                    .data_out(data_out),
                    .zero(zero));
                    
                    
    initial begin  
        
        //load instructions 
        #1 clk = 0; broken_Reg =  4'd2;  MemRead = 1; MemWrite = 0; MemtoReg = 1; read1 = 4; //lw $t1, 4($zero)
        #1 clk = ~clk;  
        
        #1 clk = ~clk; read1 = 8;//lw $t2, 8($zero)
        #1 clk = ~clk;
        
        #1 clk = ~clk; read1 = 12;//lw $t2, 8($zero)
        #1 clk = ~clk;
         
         //R-type instructions
        #1 clk = ~clk; read1 = 8; MemRead = 0; MemWrite = 0; MemtoReg = 0; read2 = 4; //add $t0, $t1, $t2
        #1 clk = ~clk;
        
        #1 clk = ~clk; broken_Reg = 4'd1; read1 = 4; read2 = 8; //or $t1, $t2, $t3
        #1 clk = ~clk;
        
        #1 clk =~clk; broken_Reg = 4'd6; read1 = 12; read2 = 12;//beq $t0, $t1, 3
        #1 clk = ~clk;
        
        //store instructions
        #1 clk =~clk; broken_Reg = 4'd2; read1 = 0; read2 = 12; MemWrite = 1; //store r8($t0) to loc0
        #1 clk = ~clk;
        
        #1 clk =~clk; read1 = 4; read2 = 12; //store r8($t0) to loc0
        #1 clk = ~clk;
        
        #1 clk =~clk; read1 = 8; read2 = 4; //store r8($t0) to loc0
        #1 clk = ~clk;
        
        #1 clk =~clk; read1 = 12; read2 = 8; //store r8($t0) to loc0
        #1 clk = ~clk;
        
        
    end 
endmodule
