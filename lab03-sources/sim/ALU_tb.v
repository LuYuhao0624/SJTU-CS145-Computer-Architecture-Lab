`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 08:16:46
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(

    );
    reg [31:0] Input1;
    reg [31:0] Input2;
    reg [3:0] ALUCtr;
    wire [31:0] ALURes;
    wire Zero;
    
    ALU u2(
        .input1(Input1),
        .input2(Input2),
        .aluCtr(ALUCtr),
        .aluRes(ALURes),
        .zero(Zero)
    );
    
    initial begin
    Input1 = 0;
    Input2 = 0;
    ALUCtr = 0;
    
    #100
    
    #100
    Input1 = 31'd15;
    Input2 = 31'd10;
    
    #100
    ALUCtr = 4'b0001;
    
    #100
    ALUCtr = 4'b0010;
    
    #100
    ALUCtr = 4'b0110;
    
    #100
    Input1 = 31'd10;
    Input2 = 31'd15;
    
    #100
    Input1 = 31'd15;
    Input2 = 31'd10;
    ALUCtr = 4'b0111;
    
    #100
    Input1 = 31'd10;
    Input2 = 31'd15;
    
    #100
    Input1 = 31'd1;
    Input2 = 31'd1;
    ALUCtr = 4'b1100;
    
    #100
    Input1 = 31'd16;
    
    end
endmodule
