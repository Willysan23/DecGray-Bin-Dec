`timescale 1ns / 1ps

module BCD_a_anodo(

input [3:0] digito,
output reg [7:0] catodo = 0

    );
    
always@ (digito)
begin 
    case(digito)
    
    4'd0:
        catodo = 8'b11000000; // cero
    4'd1:
        catodo = 8'b11111001; // uno 
    4'd2:
        catodo = 8'b10100100; // dos
    4'd3:
        catodo = 8'b10110000; // tres  
    4'd4:
        catodo = 8'b10110001; // cuatro 
    4'd5:
        catodo = 8'b10010010; // cinco
    4'd6:
        catodo = 8'b10000010; // seis 
    4'd7:
        catodo = 8'b11111000; // siente                
    4'd8:
        catodo = 8'b10000000; // ocho       
    4'd9:
        catodo = 8'b10010000; // nueve 
    default:
        catodo = 8'b11000000; // default               

    endcase
end            
endmodule
