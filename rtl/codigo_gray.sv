`timescale 1ns / 1ps

module codigo_gray(

    input A0,
    input A1,
    input A2,
    input A3,
    
    output wire [3:0] digito 
    );
    
assign digito[0] = A0;
assign digito[1] = ~(~(A0) ^ A1);
assign digito[2] = ~(~(A1) ^ A2);
assign digito[3] = ~(~(A2) ^ A3);

endmodule
