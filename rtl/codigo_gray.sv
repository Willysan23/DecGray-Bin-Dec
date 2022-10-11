`timescale 1ns / 1ps

module codigo_gray(

    input A0,
    input A1,
    input A2,
    input A3,

    output Z0,
    output Z1,
    output Z2,
    output Z3
    );
    
assign Z3 = A0;
assign Z2 = ~(~(A0) ^ A1);
assign Z1 = ~(~(A1) ^ A2);
assign Z0 = ~(~(A2) ^ A3);

  
endmodule
