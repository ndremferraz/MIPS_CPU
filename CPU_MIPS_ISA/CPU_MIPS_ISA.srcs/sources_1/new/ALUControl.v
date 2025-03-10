`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2025 04:53:23 PM
// Design Name: 
// Module Name: ALUControl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALUControl(
                input[1:0] ALUOp,
                input[5:0] FuncCode,
                output reg[3:0] ALUCtl);
    
    wire[3:0] decoder_out;
    
    
    //When performing R-type instructions the ALUCtl will need to be decoded based on the funccode
    funcCodeDecoder decoder(
                                .funcCode(FuncCode),
                                .ALUCtl(decoder_out));
                                
                                
    //check the instruction type  
    //if lw/sw add
    //if beq subtract 
    //if R-type use result from decoder                       
    always @(*) begin
        case(ALUOp)
            2'd0: ALUCtl <= 4'd2;
            2'd1: ALUCtl <= 4'd6;
            2'd2: ALUCtl <= decoder_out;
                default: ALUCtl <= 4'd15;
        endcase
   end
    
    
endmodule
