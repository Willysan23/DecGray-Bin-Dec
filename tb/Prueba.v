`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 04:04:20 PM
// Design Name: 
// Module Name: Prueba
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


module Prueba();
reg A;
reg B;
reg C; 
reg D;

wire W;
wire Y;
wire Z;
wire X;

Circuito Uo(
.A(A),
.B(B),
.C(C),
.D(D),
.W(W),
.Y(Y),
.X(X),
.Z(Z)
);

initial 
begin

A=1'b0;
B=1'b0;
C=1'b0;
D=1'b0;

#50
A=1'b0;
B=1'b0;
C=1'b0;
D=1'b1;

#50
A=1'b0;
B=1'b0;
C=1'b1;
D=1'b0;

#50
A=1'b0;
B=1'b0;
C=1'b1;
D=1'b1;

#50
A=1'b0;
B=1'b1;
C=1'b0;
D=1'b0;

#50
A=1'b0;
B=1'b1;
C=1'b0;
D=1'b1;

#50
A=1'b0;
B=1'b1;
C=1'b1;
D=1'b0;

#50
A=1'b0;
B=1'b1;
C=1'b1;
D=1'b1;

#50
A=1'b1;
B=1'b0;
C=1'b0;
D=1'b0;

#50
A=1'b1;
B=1'b0;
C=1'b0;
D=1'b1;

#50
A=1'b1;
B=1'b0;
C=1'b1;
D=1'b0;

#50
A=1'b1;
B=1'b0;
C=1'b1;
D=1'b1;

#50
A=1'b1;
B=1'b1;
C=1'b0;
D=1'b0;

#50
A=1'b1;
B=1'b1;
C=1'b0;
D=1'b1;

#50
A=1'b1;
B=1'b1;
C=1'b1;
D=1'b0;

#50
A=1'b1;
B=1'b1;
C=1'b1;
D=1'b1;

end
endmodule
