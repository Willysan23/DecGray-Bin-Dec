`timescale 1ns / 1ps

module BCD_a_catodo(

input [1:0] refrescamiento,
input [3:0] digito,
output reg [6:0] catodo 
    );
    
always@ (digito, refrescamiento)
begin 
//    if (refrescamiento == 2'b00)    
//        begin
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
//   else if(refrescamiento == 2'b01)
//        begin 
//        case(digito)
//        4'b0000:  
//            catodo= 7'b0000001; // 0
//        4'b0001:  
//            catodo= 7'b1001111; // 1
//        4'b0011:  
//            catodo= 7'b0010010; // 2
//        4'b0010:  
//            catodo= 7'b0000110; // 3
//        4'b0110:  
//            catodo= 7'b1001100; // 4
//        4'b0111:  
//            catodo= 7'b0100100; // 5
//        4'b0101: 
//            catodo= 7'b0100000; // 6
//        4'b0100: 
//            catodo= 7'b0001111; // 7 
//        4'b1100: 
//            catodo= 7'b0000000; // 8
//        4'b1101: 
//            catodo= 7'b0000100; // 9
//        4'b1111: 
//            catodo= 7'b0000001; // 10 solo sale 0
//        4'b1110:  
//            catodo= 7'b1001111; // 11 solo sale 1
//        4'b1010: 
//            catodo= 7'b0010010; // 12 solo sale 2
//        4'b1011: 
//            catodo= 7'b0000110; // 13 solo sale 3
//        4'b1001: 
//            catodo= 7'b1001100; // 14 solo sale 4
//        4'b1000: 
//            catodo= 7'b0100100; // 15 solo sale 5
//        default
//            catodo= 7'b0000001; // default   
//        endcase
////      end //
          
endmodule