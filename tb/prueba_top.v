`timescale 1ns / 1ps


module prueba_top;

reg clk =0; // 100MHZ

reg [7:0] switch;
reg [3:0] boton;
wire [3:0] anodo;
wire [7:0] catodo;

top UUT(clk, switch, boton, anodo, catodo);
always #5 clk =~clk;

initial 
begin
#100 switch[3:0] = 4; 
#1000 switch[7:4] = 8;
#100 boton = 1; 

end


endmodule
