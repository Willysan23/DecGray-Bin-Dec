`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 03:49:00 PM
// Design Name: 
// Module Name: Circuito
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


module Circuito(
    input A,
    input B,
    input C,
    input D,
    
Viva saprissa

    output W,
    output Y,
    output X,
    output Z
    );
    
assign W = A;
assign Y = ~(~(A) ^ B);
assign X = ~(~(B) ^ C);
assign Z = ~(~(C) ^ D);

endmodule
