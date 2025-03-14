`timescale 1ns / 1ps


module CPU_core(
    input wire clk,
    input wire[31:0] dataMemDataOut,
    input wire[31:0] instruction,
    output reg[31:0] program_counter,
    output wire dataMemWrite, dataMemRead,
    output wire[31:0] dataMemAddress, 
    output wire[31:0] dataMemDataIn);
    
    //wires connected to Control Unit 
    wire RegDst, Branch, MemtoReg, RegWrite, ALUSrc;
    wire[1:0] ALUOp;
    
    //wires connected to register file
    wire[31:0] data1, data2;
    
    //wire for 4-bit ALU control signal comming from ALU Control Unit
    wire[3:0] ALUCtl;
    
    //wire connected to ALU
   wire zero;
   wire[31:0] ALUout; 
    
   //output of data selectors 
   wire branchSelector;
    wire[4:0] WriteRegister; 
    wire[31:0] WriteData, ALU_2nd_operand, branchAddress, branchOffset;
    wire[31:0] pcPlus4, branchPlusOffset;
    
    
    assign dataMemAddress = ALUout; //CPU core output, simple output of the ALU used to calculate address usign base and offset
    assign branchSelector = Branch & zero; //will used offsetted address in zero(comming from ALU) and branch(comming from Control Unit) are both truth
    assign dataMemDataIn = data2; //CPU core output, data that gets written to memory comes from register output 2
    
    
    //main control will receive the OpCode as an input 
    control_unit main_control(
                    instruction[31:26],
                    RegDst,
                    Branch,
                    dataMemRead, //CPU core output 
                    dataMemWrite, //CPU core output
                    ALUSrc,
                    MemtoReg,
                    RegWrite,
                    ALUOp);
                    
     ALUControl alu_control(
                    ALUOp,
                    instruction[5:0], //funcCode from Instruction
                    ALUCtl);
                    
    selector32bit branch_selector(pcPlus4, branchPlusOffset, branchSelector, branchAddress);
                    
     selector32bit writedata_sel(
                    ALUout, 
                    dataMemDataOut, 
                    MemtoReg, 
                    WriteData);
     
     selector32bit ALUsrc_sel(
                    data2, 
                    {16'd0,instruction[15:0]}, 
                    ALUSrc, 
                    ALU_2nd_operand);
                    
    selector5bit writeregister_sel(
                    instruction[20:16], instruction[15:11],
                    RegDst,
                    WriteRegister);
                    
     register32x32bit registerFile(
                    clk, 
                    RegWrite, 
                    instruction[25:21],
                    instruction[20:16],
                    WriteRegister,
                    WriteData,
                    data1,
                    data2);
                    
      ALU32bit main_ALU(
                    ALUCtl,
                    data1, 
                    ALU_2nd_operand,
                    ALUout,
                    zero);
     
     extend_shift branch_offeset(instruction[15:0],branchOffset);
     
     ALU32bit pc_plus_4(4'd2, program_counter, 32'd4, pcPlus4);
                    
     ALU32bit branch_calculator(4'd2, pcPlus4, branchOffset, branchPlusOffset);
     
     
     always @(posedge clk) begin 
        program_counter <= branchAddress;
     end
          

endmodule
