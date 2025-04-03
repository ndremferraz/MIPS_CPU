`timescale 1ns / 1ps


module CPU_core(input wire clk, input wire rst, 
                            output wire[31:0] mem_out);

    reg[31:0] pc;
    wire[31:0] pc_next, instruction, write_data, alu_input1, alu_input2;
    wire branch, MemRead, MemtoReg, MemWrite, zero;  
    
    wire[3:0] ALUCtl;
    
     
    
    
    always @(posedge clk) begin
        if(rst) pc<= 512;
        else pc <= pc_next;
    end    
        
    memory instruction_Mem(
                .clk(clk), 
                .write(0),
                .read(1),
                .ALU_resutl_address(pc),
                .write_data(0),
                .read_data(instruction));
    
    controls_plus_register control_register(
                .clk(clk), 
                .instruction(instruction), 
                .write_data(write_data),
                .branch(branch), 
                .MemRead(MemRead), 
                .MemtoReg(MemroReg),
                .MemWrite(MemWrite),
                .ALUCtl(ALUCtl), 
                .alu_input1(alu_input1), 
                .alu_input2(alu_input2));
                
     ALU_plus_dataMem ALU_dataMem(
                .clk(clk), 
                .ALUCtl(ALUCtl), 
                .read1(alu_input1),
                .read2(alu_input2),
                .MemWrite(MemWrite),
                .MemRead(MemRead),
                .MemtoReg(MemtoReg),
                .data_out(mem_out),
                .zero(zero));
     
     branch_calculator calculate_branch(
                .branch(branch),
                .zero(zero),
                .instruction(instruction[15:0]),
                .pc(pc), 
                .pc_next(pc_next));
   
          

endmodule
