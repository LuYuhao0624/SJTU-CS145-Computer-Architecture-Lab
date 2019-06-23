`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 10:29:39
// Design Name: 
// Module Name: SignExt_tb
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


module SignExt_tb(

    );
    reg [15:0] Inst;
    wire [31:0] Data;
    SignExt u2(
        .inst(Inst),
        .data(Data)
    );
    
    initial begin
        Inst = 16'h0000;
        
        #100;
        Inst = 16'h0001;
        
        #100;
        Inst = 16'hffff;
        
        #100;
        Inst = 16'h0002;
        
        #100;
        Inst = 16'hfffe;
    end
endmodule
