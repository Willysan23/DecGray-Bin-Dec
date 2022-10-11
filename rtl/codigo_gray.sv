`timescale 1ns / 1ps

module codigo_gray(

    input A0,
    input A1,
    input A2,
    input A3,

    output wire Z0,
    output wire Z1,
    output wire Z2,
    output wire Z3,
    
    output reg [3:0] digito = 0,
    );
    
assign Z3 = A0;
assign Z2 = ~(~(A0) ^ A1);
assign Z1 = ~(~(A1) ^ A2);
assign Z0 = ~(~(A2) ^ A3);
    
    assign digito[0] = Z0;
    assign digito[1] = Z1;
    assign digito[2] = Z2;
    assign digito[3] = Z3;
    
endmodule
