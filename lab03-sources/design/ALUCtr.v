`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/21 19:37:50
// Design Name: 
// Module Name: ALUCtr
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


module ALUCtr(
    input [1:0] aluOp,
    input [5:0] funct,
    output [3:0] aluCtrOut
    );
    reg [3:0] ALUCtrOut;
    
    always @ (aluOp or funct)
    begin
        casex ({aluOp, funct})
            
            8'b00xxxxxx : ALUCtrOut = 4'b0010;
            8'b01xxxxxx : ALUCtrOut = 4'b0110;
            8'b1xxx0000 : ALUCtrOut = 4'b0010;
            8'b1xxx0010 : ALUCtrOut = 4'b0110;
            8'b1xxx0100 : ALUCtrOut = 4'b0000;
            8'b1xxx0101 : ALUCtrOut = 4'b0001;
            8'b1xxx1010 : ALUCtrOut = 4'b0111;
        
        endcase
    end
    assign aluCtrOut = ALUCtrOut;
endmodule
