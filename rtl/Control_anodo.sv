`timescale 1ns / 1ps


// modulo de control para los anodos 


module control_anodo(
input [1:0] refrescamiento, // salida del modulo refrescamiento 
output reg  [3:0] anodo = 0    
    );
    
always@ (refrescamiento)
begin 
    case(refrescamiento)
        2'b00:
            anodo = 4'b1110; // 1 encedido - derecha
        2'b01:
            anodo = 4'b1101; // 2 encendido 

          endcase
end 
      
endmodule
