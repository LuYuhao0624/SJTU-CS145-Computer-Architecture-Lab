`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 09:54:15
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
    input Clk,
    input [31:0] address,
    input [31:0] writeData,
    input memWrite,
    input memRead,
    output [31:0] readData
    );
    reg [31:0] ReadData;
    reg [31:0] memFile[63:0];
    integer j;
    
    initial begin
        for (j = 6'b000000; j <= 6'b111111; j = j+1)
            memFile[j] = 32'h00000000;
        ReadData = 0;
    end
    
    always @ (address)
        begin
            if (memRead)
                ReadData = memFile[address];
        end
    always @ (negedge Clk)
        begin
            if (memWrite)
                memFile[address] = writeData;
        end
    assign readData = ReadData;
endmodule
