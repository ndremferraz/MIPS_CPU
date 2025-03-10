`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2025 09:00:33 PM
// Design Name: 
// Module Name: funcCodeDecoder
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


module funcCodeDecoder(input wire[5:0] funcCode, output reg[3:0] ALUCtl);

    
    always @(*) begin
       //From the function code determines the operation to be executed by the ALU
       case(funcCode)
            6'd32: ALUCtl <= 4'd2;
            6'd34: ALUCtl <= 4'd6;
            6'd36: ALUCtl <= 4'd0;
            6'd37: ALUCtl <= 4'd1;
            6'd39: ALUCtl <= 4'd12;
            6'd42: ALUCtl <= 4'd7;
            default: ALUCtl <= 4'd15;
        endcase
    end

endmodule
