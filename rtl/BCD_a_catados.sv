`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2022 19:50:33
// Design Name: 
// Module Name: BCD_a_catados
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD_a_catados(

input [3:0] digito,
output reg [7:0] catodo_seg = 0

    );
    
always@ (digito)
begin 
    case(digito)
    
    4'b0000:  
        catodo_seg= 7'b0000001; // 0
    4'b0001:  
        catodo_seg= 7'b1001111; // 1
    4'b0011:  
        catodo_seg= 7'b0010010; // 2
    4'b0010:  
        catodo_seg= 7'b0000110; // 3
    4'b0110:  
        catodo_seg= 7'b1001100; // 4
    4'b0111:  
        catodo_seg= 7'b0100100; // 5
    4'b0101:  
        catodo_seg= 7'b0100000; // 6
    4'b0100:  
        catodo_seg= 7'b0001111; // 7 
    4'b1100:  
        catodo_seg= 7'b0000000; // 8
    4'b1101:  
        catodo_seg= 7'b0000100; // 9
    4'b1111:  
        catodo_seg= 7'b0000001; // 10 solo sale 0
    4'b1110:   
        catodo_seg= 7'b1001111; // 11 solo sale 1
    4'b1010:  
        catodo_segut= 7'b0010010; // 12 solo sale 2
    4'b1011:  
        catodo_seg= 7'b0000110; // 13 solo sale 3
    4'b1001:  
        catodo_seg= 7'b1001100; // 14 solo sale 4
    4'b1000:  
        catodo_seg= 7'b0100100; // 15 solo sale 5
    default:
        catodo_seg = 7'b0000001; // default    

    endcase
end            
endmodule
