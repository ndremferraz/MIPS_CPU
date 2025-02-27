`timescale 1ns / 1ps

module ALU32bit(A, B, cin, OP, ainvert, binvert, zero, Result, overflow);

    //A,B 32bit inputs to the ALU
    //OP is the ALUOP code
    //Cin used when making 2's compliments with b
    //binvert used to invert b and subtract b from a 
    //ainvert used to invert a creating NAND or NOR logic
    input [31:0] A, B; 
    input [1:0] OP;
    input cin, ainvert, binvert;
    
    //Result will store the 32bit result
    //overflow should be set when there is an overflow 
    //zero should be set when all bits in results are 0 
    output wire [31:0] Result;
    output zero, overflow;
    
    //Carry used to input carryOut to next ALU unit to create ripple carry formation 
    //set will be used when to connect set from ALU31 to less on ALU0
    //producing set on less than logic 
    wire [31:0] Carry;
    wire set;
    
    // bitALU(a, ainvert, b, binvert, cin, OP, less, x, cout);
    bitALU b0(.a(A[0]), .ainvert(ainvert), .b(B[0]), .binvert(binvert), .cin(cin), .op(OP), .less(0), .x(Result[0]), .cout(Carry[0]));
    
    // Casded adder
    bitALU b1 (.a(A[1]), .ainvert(ainvert), .b(B[1]), .binvert(binvert), .cin(Carry[0]), .op(OP), .less(0), .x(Result[1]), .cout(Carry[1]));
    bitALU b2 (.a(A[2]), .ainvert(ainvert), .b(B[2]), .binvert(binvert), .cin(Carry[1]), .op(OP), .less(0), .x(Result[2]), .cout(Carry[2]));
    bitALU b3 (.a(A[3]), .ainvert(ainvert), .b(B[3]), .binvert(binvert), .cin(Carry[2]), .op(OP), .less(0), .x(Result[3]), .cout(Carry[3]));
    bitALU b4 (.a(A[4]), .ainvert(ainvert), .b(B[4]), .binvert(binvert), .cin(Carry[3]), .op(OP), .less(0), .x(Result[4]), .cout(Carry[4]));
    bitALU b5 (.a(A[5]), .ainvert(ainvert), .b(B[5]), .binvert(binvert), .cin(Carry[4]), .op(OP), .less(0), .x(Result[5]), .cout(Carry[5]));
    bitALU b6 (.a(A[6]), .ainvert(ainvert), .b(B[6]), .binvert(binvert), .cin(Carry[5]), .op(OP), .less(0), .x(Result[6]), .cout(Carry[6]));
    bitALU b7 (.a(A[7]), .ainvert(ainvert), .b(B[7]), .binvert(binvert), .cin(Carry[6]), .op(OP), .less(0), .x(Result[7]), .cout(Carry[7]));
    bitALU b8 (.a(A[8]), .ainvert(ainvert), .b(B[8]), .binvert(binvert), .cin(Carry[7]), .op(OP), .less(0), .x(Result[8]), .cout(Carry[8]));
    bitALU b9 (.a(A[9]), .ainvert(ainvert), .b(B[9]), .binvert(binvert), .cin(Carry[8]), .op(OP), .less(0), .x(Result[9]), .cout(Carry[9]));
    bitALU b10(.a(A[10]), .ainvert(ainvert), .b(B[10]), .binvert(binvert), .cin(Carry[9]), .op(OP), .less(0), .x(Result[10]), .cout(Carry[10]));
    bitALU b11(.a(A[11]), .ainvert(ainvert), .b(B[11]), .binvert(binvert), .cin(Carry[10]), .op(OP), .less(0), .x(Result[11]), .cout(Carry[11]));
    bitALU b12(.a(A[12]), .ainvert(ainvert), .b(B[12]), .binvert(binvert), .cin(Carry[11]), .op(OP), .less(0), .x(Result[12]), .cout(Carry[12]));
    bitALU b13(.a(A[13]), .ainvert(ainvert), .b(B[13]), .binvert(binvert), .cin(Carry[12]), .op(OP), .less(0), .x(Result[13]), .cout(Carry[13]));
    bitALU b14(.a(A[14]), .ainvert(ainvert), .b(B[14]), .binvert(binvert), .cin(Carry[13]), .op(OP), .less(0), .x(Result[14]), .cout(Carry[14]));
    bitALU b15(.a(A[15]), .ainvert(ainvert), .b(B[15]), .binvert(binvert), .cin(Carry[14]), .op(OP), .less(0), .x(Result[15]), .cout(Carry[15]));
    bitALU b16(.a(A[16]), .ainvert(ainvert), .b(B[16]), .binvert(binvert), .cin(Carry[15]), .op(OP), .less(0), .x(Result[16]), .cout(Carry[16]));
    bitALU b17(.a(A[17]), .ainvert(ainvert), .b(B[17]), .binvert(binvert), .cin(Carry[16]), .op(OP), .less(0), .x(Result[17]), .cout(Carry[17]));
    bitALU b18(.a(A[18]), .ainvert(ainvert), .b(B[18]), .binvert(binvert), .cin(Carry[17]), .op(OP), .less(0), .x(Result[18]), .cout(Carry[18]));
    bitALU b19(.a(A[19]), .ainvert(ainvert), .b(B[19]), .binvert(binvert), .cin(Carry[18]), .op(OP), .less(0), .x(Result[19]), .cout(Carry[19]));
    bitALU b20(.a(A[20]), .ainvert(ainvert), .b(B[20]), .binvert(binvert), .cin(Carry[19]), .op(OP), .less(0), .x(Result[20]), .cout(Carry[20]));
    bitALU b21(.a(A[21]), .ainvert(ainvert), .b(B[21]), .binvert(binvert), .cin(Carry[20]), .op(OP), .less(0), .x(Result[21]), .cout(Carry[21]));
    bitALU b22(.a(A[22]), .ainvert(ainvert), .b(B[22]), .binvert(binvert), .cin(Carry[21]), .op(OP), .less(0), .x(Result[22]), .cout(Carry[22]));
    bitALU b23(.a(A[23]), .ainvert(ainvert), .b(B[23]), .binvert(binvert), .cin(Carry[22]), .op(OP), .less(0), .x(Result[23]), .cout(Carry[23]));
    bitALU b24(.a(A[24]), .ainvert(ainvert), .b(B[24]), .binvert(binvert), .cin(Carry[23]), .op(OP), .less(0), .x(Result[24]), .cout(Carry[24]));
    bitALU b25(.a(A[25]), .ainvert(ainvert), .b(B[25]), .binvert(binvert), .cin(Carry[24]), .op(OP), .less(0), .x(Result[25]), .cout(Carry[25]));
    bitALU b26(.a(A[26]), .ainvert(ainvert), .b(B[26]), .binvert(binvert), .cin(Carry[25]), .op(OP), .less(0), .x(Result[26]), .cout(Carry[26]));
    bitALU b27(.a(A[27]), .ainvert(ainvert), .b(B[27]), .binvert(binvert), .cin(Carry[26]), .op(OP), .less(0), .x(Result[27]), .cout(Carry[27]));
    bitALU b28(.a(A[28]), .ainvert(ainvert), .b(B[28]), .binvert(binvert), .cin(Carry[27]), .op(OP), .less(0), .x(Result[28]), .cout(Carry[28]));
    bitALU b29(.a(A[29]), .ainvert(ainvert), .b(B[29]), .binvert(binvert), .cin(Carry[28]), .op(OP), .less(0), .x(Result[29]), .cout(Carry[29]));
    bitALU b30(.a(A[30]), .ainvert(ainvert), .b(B[30]), .binvert(binvert), .cin(Carry[29]), .op(OP), .less(0), .x(Result[30]), .cout(Carry[30]));
    
    // ALU31(a, ainvert, b, binvert, cin, OP, less, x, cout, set);
    ALU31( .a(A[31]), .ainvert(ainvert), .b(B[31]), .binvert(binvert), .cin(Carry[30]), .OP(OP), .less(less), .x(Result[31]), .cout(Carry[31]), .set(set)); 
    
    always @(*) begin 
        bitALU(.a(A[0]), .ainvert(ainvert), .b(B[0]), .binvert(binvert), .cin(cin), .op(OP), .less(set), .x(Result[0]), .cout(Carry[0])); 
    end   
    
    //overflow detection 
    assign overflow = (~binvert & ((A[31] & B[31] & ~Result[31]) | (~A[31] & ~B[31] & Result[31]))) 
                      + (binvert & ((A[31] & ~B[31] & ~Result[31]) | (~A[31] & B[31] & Result[31])));
    
    //NOR logic to verify that all results are negated and the operation resulted in 0
    assign zero = ~(Result[0] | Result[1] | Result[2] | Result[3] | Result[4] | Result[5] | Result[6] | Result[7] | 
                    Result[8] | Result[9] | Result[10] | Result[11] | Result[12] | Result[13] | Result[14] | Result[15] |
                    Result[16] | Result[17] | Result[18] | Result[19] | Result[20] | Result[21] | Result[22] | Result[23] |
                    Result[24] | Result[25] | Result[26] | Result[27] | Result[28] | Result[29] | Result[30] | Result[31]);
    
endmodule
