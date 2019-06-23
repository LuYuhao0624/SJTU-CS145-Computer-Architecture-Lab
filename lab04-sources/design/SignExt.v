`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 10:26:12
// Design Name: 
// Module Name: SignExt
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


module SignExt(
    input [15:0] inst,
    output [31:0] data
    );
    reg [15:0] sign;
    reg [31:0] Data;
    always @ (inst)
        begin
            if (inst[15] == 0)
                Data = 32'h00000000 | inst;
            else
                Data = 32'hffff0000 | inst;
        end
    assign data = Data;
endmodule
