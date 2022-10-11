`timescale 1ns / 1ps

// modulo de control para los catodos 


module control_catodos(
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
        2'b10:
            anodo = 4'b1011; // 3 encendido 
        2'b11:
            anodo = 4'b0111; // 4 encendido - izquierda 
          endcase
end 
      
endmodule
