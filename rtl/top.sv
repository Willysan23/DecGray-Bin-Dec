`timescale 1ns / 1ps

module top(

input wire clk, // 100MHZ
input wire [3:0] switch,
input wire [3:0] anodo,
output wire [6:0] catodo

    );
    
wire refrescamiento_clock;  // entrada de refrescamiento de reloj - refrescamiento de contador
wire  [1:0] refrescamiento; // refrescamiento de reloj
wire [3:0] DIGITO;

// wrapper del refrescamiento
divisor_clock refrescamiento_top (
.clk(clk),
.divisor(refrescamiento)
);


refrescamiento refrescamiento_wrapper(
.refrescamiento_clock(refrescamiento_clock),
.refrescamiento(refrescamiento)
);

control_anodo control_anodo_wrapper(
.refrescamiento(refrescamiento),
.anodo(anodo)
);


control_BCD control_BCD_wrapper(

.digito1(switch[3:0]),
.refrescamiento(refrescamiento),
.DIGITO(DIGITO)

);


BCD_a_catado BCD_a_catado_wrapper (
.digito(DIGITO),
.catodo(catodo)

);

codigo_gray(
.A0(),
.A1(),
.A2(),
.A3(),

.Z0(),
.Z1(),
.Z2(),
.Z3()
);        


endmodule
