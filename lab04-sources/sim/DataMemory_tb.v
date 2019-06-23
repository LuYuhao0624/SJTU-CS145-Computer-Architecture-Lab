`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 10:01:24
// Design Name: 
// Module Name: DataMemory_tb
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


module DataMemory_tb(

    );
    reg clock;
    reg [31:0] Address;
    reg [31:0] WriteData;
    reg MemWrite;
    reg MemRead;
    wire [31:0] ReadData;
    parameter PERIOD = 100;
    
    DataMemory u1(
        .Clk(clock),
        .address(Address),
        .writeData(WriteData),
        .memWrite(MemWrite),
        .memRead(MemRead),
        .readData(ReadData)
    );
    
    always #(PERIOD) clock = !clock;
    
    initial begin
        clock = 0;
        Address = 32'h00000000;
        WriteData = 32'h00000000;
        MemWrite = 1'b0;
        MemRead = 1'b0;
        
        #185;
        MemWrite = 1'b1;
        Address = 32'h00000007;
        WriteData = 32'he0000000;
        
        #100;
        MemWrite = 1'b1;
        Address = 32'h00000006;
        WriteData = 32'hffffffff;
        
        #185;
        MemRead = 1'b1;
        MemWrite = 1'b0;
        Address = 7;
        
        #80;
        MemWrite = 1;
        Address = 8;
        WriteData = 32'haaaaaaaa;
        
        #80;
        MemWrite = 0;
        MemRead = 1;
        Address = 6;
    end
endmodule
