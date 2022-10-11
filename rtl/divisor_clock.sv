`timescale 1ns / 1ps

module divisor_clock(
input wire clk, // 1000Mhz
output reg divisor // 10hz 
);

localparam div_contador = 4999; //10kHz
integer contador = 0; // cambiar 
always@ (posedge clk )
begin 

    if (contador == 1000)
        contador <= 0; 
    else 
    contador <= contador +1;
 end 
 
 // se divide 
 
 always@ (posedge clk)
 begin 
    if(contador == div_contador)
        divisor <= ~divisor;
    else 
        divisor <= divisor;
    
end
endmodule
