`timescale 1ns / 1ps


module CPU_core_tb;

    reg clk, pc_reset;
    reg[31:0] program_counter;
    
    wire dataMemRead, dataMemWrite;
    wire[31:0] instruction_out, dataMemOut, dataMemIn, dataMemAddress, program_counter_wire; 
    
    integer i;
   

    memory mem_instruction( .clk(clk), 
                                            .write(1'b0),
                                            .read(1'b1),
                                            .ALU_result_address(program_couter),
                                            .write_data(),
                                            .read_data(instruction_out));
                                            
    CPU_core cpu(.clk(clk),
                          .dataMemDataOut(dataMemOut),
                          .instruction(instruction_out),
                          .program_counter(program_counter),
                          .dataMemWrite(dataMemWrite),
                          .dataMemRead(dataMemRead),
                          .dataMemAddress(dataMemAddress),
                          .dataMemDataIn(dataMemIn));                                        
                                            
    memory mem_data(   .clk(clk), 
                                    .write(dataMemWrite),
                                    .read(dataMemRead),
                                    .ALU_result_address(dataMemAddress),
                                    .write_data(dataMemIn),
                                    .read_data(dataMemOut));
                                    
                                    
    initial begin
        
        /* To test my CPU I have manually insterted instructions and data to memory in the module definition;
        
        The C test program to be run should be something along the lines of 
        
        number1 = number3 + number2;
        number2 = number3 || number4;
        
        if(number1 == number2){
            number2 = number3;
        }
        
        The assembly program should do the following
        lw $t1, 4($zero)
        lw $t2, 8($zero)
        lw $t3  12($zero)
        
        add $t0, $t1, $t2
        or $t1, $t2, $t3
        
        beq $t0, $t1, 1
        add $t1, $t2, $zero
        
        sw $t0, 0($zero)
        sw $t1, 4($zero)
        sw $t2, 8($zero)
        sw $t3, 12($zero)        
        */
        #1 pc_reset = 0; clk = 0; //1st instruction address
        #1 pc_reset = 1;
        
        for(i=0;i<18;i = i + 1) begin 
            #1 clk = ~clk;
            #1 clk = ~clk;
            
        end             
        
        
    
    end                                    
    
    
endmodule
