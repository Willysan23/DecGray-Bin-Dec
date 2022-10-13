`timescale 1ns / 1ps

module top(

input wire clk, // 100MHZ
input wire [3:0] switch,
input reg [1:0] reset,
output wire [6:0] catodo,
output wire [3:0] anodo

    );
    
wire refrescamiento_clock;  // entrada de refrescamiento de reloj - refrescamiento de contador
wire  [1:0] refrescamiento; // refrescamiento de reloj

wire [3:0] digito;

// wrapper del refrescamiento
divisor_clock refescamiento_top (
.clk(clk),
.divisor(refrescamiento)
);


refescamiento refescamiento_inst(
.refrescamiento_clock(refrescamiento_clock),
.refrescamiento(refrescamiento),
.reset(reset)


);

control_anodo control_anodo_inst(
.refrescamiento(refrescamiento),
.anodo(anodo)
);

BCD_a_catodo BCD_a_catodo_inst (
.refrescamiento(refrescamiento),
.digito(digito),
.catodo(catodo)
);

codigo_gray codigo_gray_inst(
.A0(switch[0]),
.A1(switch[1]),
.A2(switch[2]),
.A3(switch[3]),
.digito(digito)
);        


endmodule