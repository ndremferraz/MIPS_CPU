`timescale 1ns / 1ps


module control_unit(
    //op code => LSB from instruction that indicate operation type 
    input wire[5:0] opCode,
    //destination_register = 0 => rt is written to, destination_register = 1 => rd is written to
    //branch is set on beq operations   
    //memory_read is set on lw instructions
    //memroy_write is set on sw instructions
     //ALU_source is set on lw and sw, to input offset into ALU
     //memory_to_register is set on lw intruction  
     //register_write is set on lw and R-type instructions
    output reg destination_register, branch, memory_read, memory_write, ALU_source, memory_to_register, register_write, 
    output reg[1:0] ALUOp);
    
    always @(*) begin 
        case(opCode)
            //R-type instruction
            6'd0:  begin
                ALU_source <= 0; 
                destination_register <= 1;
                branch <= 0;
                memory_read <= 0;
                memory_write <= 0;
                memory_to_register <= 0;
                register_write <=1;
                ALUOp <= 2;
            end
            //lw instruction 
            6'b100011: begin
                ALU_source <= 1;
                destination_register <= 0;
                branch <= 0;
                memory_read <= 1;
                memory_write <= 0;
                memory_to_register <= 1;
                register_write <=1;
                ALUOp <= 0; 
            end  
            //sw instruction
            6'b101011: begin
                ALU_source <= 1;
                destination_register <= 0; //dont care
                branch <= 0;
                memory_read <= 0;
                memory_write <= 1;
                memory_to_register <= 0; //dont care
                register_write <= 0;
                ALUOp <= 0; 
            end
            //beq instruction
            6'b000100: begin
                ALU_source <= 0;
                destination_register <= 0; //dont care
                branch <= 1;
                memory_read <= 0;
                memory_write <= 0;
                memory_to_register <= 0; //dont care
                register_write <=0;
                ALUOp <= 1; 
            end                                 
        endcase                 
                 
        
    end
    
    
    
endmodule
