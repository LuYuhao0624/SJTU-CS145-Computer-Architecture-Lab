`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 09:04:32
// Design Name: 
// Module Name: Registers_tb
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


module Registers_tb(

    );
    reg clock;
    reg [25:21] ReadReg1;
    reg [20:16] ReadReg2;
    reg [4:0] WriteReg;
    reg [31:0] WriteData;
    reg RegWrite;
    wire [31:0] ReadData1;
    wire [31:0] ReadData2;
    parameter PERIOD = 100;
    
    Registers u0(
        .Clk(clock),
        .readReg1(ReadReg1),
        .readReg2(ReadReg2),
        .writeReg(WriteReg),
        .writeData(WriteData),
        .regWrite(RegWrite),
        .readData1(ReadData1),
        .readData2(ReadData2)
    );
    
    always #(PERIOD) clock = !clock;
    
    initial begin
        clock = 0;
        ReadReg1 = 5'b00000;
        ReadReg2 = 5'b00000;
        WriteReg = 5'b00000;
        WriteData = 32'h00000000;
        RegWrite = 1'b0;
        
        #100;
        clock = 0;
        
        #185;
        RegWrite = 1'b1;
        WriteReg = 5'b10101;
        WriteData = 32'hffff0000;
        
        #200;
        WriteReg = 5'b01010;
        WriteData = 32'h0000ffff;
        
        #200;
        RegWrite = 1'b0;
        WriteReg = 5'b00000;
        WriteData = 32'h00000000;
        
        #50;
        ReadReg1 = 5'b10101;
        ReadReg2 = 5'b01010;
        
    end
    
endmodule
