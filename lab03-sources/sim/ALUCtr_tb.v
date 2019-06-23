`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/21 19:45:50
// Design Name: 
// Module Name: ALUCtr_tb
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


module ALUCtr_tb(

    );
    reg [1:0] ALUOp;
    reg [5:0] Funct;
    wire [3:0] ALUCtrOut;
    ALUCtr u1(
        .aluOp(ALUOp),
        .funct(Funct),
        .aluCtrOut(ALUCtrOut)
    );
    
    initial begin
        ALUOp = 0;
        Funct = 0;
        #100
        /*
         * the next tow blocks are for the two simulation results
         * in the lab03 instructions respectively 
         */

        // ###################################################### //
        // comment this block and uncomment the next block
        // to get the first simulation result
        #100 
        ALUOp = 2'b00;
        Funct = 6'b000000;
        
        #100
        ALUOp = 2'b01;
        
        #100
        ALUOp = 2'b10;
        
        #100
        Funct = 6'b000010;
        
        #100
        Funct = 6'b000100;
        
        #100
        Funct = 6'b000101;
        
        #100
        Funct = 6'b001010;
        // ###################################################### //
        
        

        // ###################################################### //
        // comment this block and uncomment the previous block
        // to get the second simulation result
        #100
        ALUOp = 2'b00;
        Funct = 6'bxxxxxx;
        
        #100
        ALUOp = 2'bx1;
        
        #100
        ALUOp = 2'b1x;
        Funct = 6'bxx0000;
        
        #100
        Funct = 6'bxx0010;
        
        #100
        Funct = 6'bxx0100;
        
        #100
        Funct = 6'bxx0101;
        
        #100
        Funct = 6'bxx1010;
        // ###################################################### //
        
    end
endmodule
