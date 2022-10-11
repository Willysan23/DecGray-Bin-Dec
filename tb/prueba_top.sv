`timescale 1ns / 1ps


module prueba_top;

reg clk =0; // 100MHZ

reg [7:0] switch;
wire [3:0] anodo;
wire [7:0] catodo;

top UUT(clk, switch, anodo, catodo);
always #5 clk =~clk;

initial 
begin
#100 switch[3:0] = 4; 
end


endmodule
