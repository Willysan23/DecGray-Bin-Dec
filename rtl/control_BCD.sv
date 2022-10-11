`timescale 1ns / 1ps


module control_BCD(
input [3:0] digito,
input [1:0] refrescamiento,
output reg [3:0] DIGITO = 0 // seleccion de qué dígito de entrada se va a mostrar
     );
     
always@(refrescamiento)  
    begin 
        case(refrescamiento)
            2'd0:
                DIGITO = digito; // valor en la posicion 1 - derecha
            2'd1:
                DIGITO = digito; // valor en la posicion 2
            2'd2:
                DIGITO = 4'b1111; // valor en la posicion 3
            2'd3:
                DIGITO = 4'b1111; // valor en la posicion 4 - izquierda 
                
                
          endcase
        end       
endmodule
