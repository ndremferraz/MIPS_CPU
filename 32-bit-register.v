`timescale 1ns / 1ps




module registerFile32word(rs, rt, rd, rdIn, rdWrite,rsOut, rtOut, clock );

    //rs and rt are the registers to read from 
    //rd is the register to write to 
    //rdIn is the data to be written to rdIn
    //When rdWrite is set enable write mode
    //Clock signal is self explanatory
    input [4:0] rs, rt, rd; 
    input [31:0] rdIn;
    input rdWrite, clock;
    
    
    //rsOut and rtOut are the registers that data will be written to 
    output [31:0] rsOut, rtOut;
    
    //32 words 32-bit words
    reg [31:0] registerFile[31:0];
    
    //accesses word at locations rs and rt of registerFile and outputs it to rsOut and rtOut registers
    //accesing logic can be implementing by using 32-to-1 MUX with selector being rs and rt 
    //MUX input are the registers 
    assign rsOut = registerFile[rs];
    assign rtOut = registerFile[rt];
    
    always begin 
        
        //Each bit in regsiterFile will have a data input and a control input
        //the data input will be connected to rdIn
        //the data input is only enabled when the control input is set
        //the control input will be connected to the encoder output for each respective register AND the rdWrite input
        @(posedge clock) if (rdWrite) registerFile[rd] <= rdIn;
        
    end
    
endmodule
