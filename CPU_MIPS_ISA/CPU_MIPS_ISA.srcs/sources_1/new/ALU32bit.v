`timescale 1ns / 1ps



module ALU32bit(
                input wire[3:0] ALUctl, //ALU ctl code 
                input wire[31:0] A, // 1st 32-bit input 
                input wire[31:0] B, //2nd 32-bit input 
                output reg[31:0] ALUout, //Result of whatever operation is executed
                output zero); //checks if the result is 0, very useful in operations like set if equal 
                
                
                assign zero = (ALUout == 0); //if the result of the ALU is 0, set Zero
                
                always @(*) begin 
                    //uses the ALUctl to determine the operation to be executed involving A and B
                    case(ALUctl)
                        0: ALUout <= A & B;
                        1: ALUout <= A | B;
                        2: ALUout <= A + B;
                        6: ALUout <= A - B;
                        7: ALUout <= A < B ? 1 : 0;
                        12: ALUout <= ~(A | B);
                        default: ALUout <= 0;
                     endcase
                end 
                   
endmodule
