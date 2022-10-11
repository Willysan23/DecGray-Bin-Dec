`timescale 1ns / 1ps

module BCD_a_catodo(

input [3:0] digito,
output reg [7:0] catodo = 0

    );
    
always@ (digito)
begin 
    case(digito)
    
    4'b0000:
        catodo = 7'b0000001; // cero solo sale 0
    4'b0001:
        catodo = 7'b0000001; // uno  solo sale 0
    4'b0011:
        catodo = 7'b0000001; // dos solo sale 0
    4'b0010:
        catodo = 7'b0000001; // tres solo sale 0
    4'b0110:
        catodo = 7'b0000001; // cuatro solo sale 0
    4'b0111:
        catodo = 7'b0000001; // cinco solo sale 0
    4'b0101:
        catodo = 7'b0000001; // seis solo sale 0
    4'b0100:
        catodo = 7'b0000001; // siente solo sale 0            
    4'b1100:
        catodo = 7'b0000001; // ocho solo sale 0
    4'b1101:
        catodo = 7'b0000001; // nueve solo sale 0 
    4'b1111:
        catodo = 7'b1001111; //diez solo sale 1
    4'b1110:
        catodo = 7'b1001111; //once solo sale 1
    4'b1010:
        catodo = 7'b1001111; //doce solo sale 1
    4'b1011:
        catodo = 7'b1001111; //trece solo sale 1 
    4'b1001:
        catodo = 7'b1001111; //catorce solo sale 1 
    4'b1000:
        catodo = 7'b1001111; //quince  solo sale 1
    default:
        catodo = 7'b0000001; // default               

    endcase
end            
endmodule
