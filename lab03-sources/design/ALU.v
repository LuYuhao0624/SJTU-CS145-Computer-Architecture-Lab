`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 07:46:30
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] input1,
    input [31:0] input2,
    input [3:0] aluCtr,
    output zero,
    output [31:0] aluRes
    );
    reg Zero;
    reg [31:0] ALURes;
    
    always @ (input1 or input2 or aluCtr)
    begin
        if (aluCtr == 4'b0010) // add
            ALURes = input1 + input2;
        else if (aluCtr == 4'b0110) // sub
            ALURes = input1 - input2;
        else if (aluCtr == 4'b0000) // and
            ALURes = input1 & input2;
        else if (aluCtr == 4'b0001) //or
            ALURes = input1 | input2;
        else if (aluCtr == 4'b0111) // set on less than
            begin
                if (input1 < input2)
                    ALURes = 1;
                else
                    ALURes = 0;
            end
        else if (aluCtr == 4'b1100) // nor
            ALURes = ~(input1 | input2);
        if (ALURes == 0)
            Zero = 1;
        else 
            Zero = 0;
    end
    assign aluRes = ALURes;
    assign zero = Zero;
endmodule
