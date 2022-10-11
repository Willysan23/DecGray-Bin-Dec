`timescale 1ns / 1ps

module top(

input wire clk, // 100MHZ
input wire [3:0] switch,
input wire [3:0] anodo,
output wire [6:0] catodo,
output wire [6:0] catodo_seg

    );
    
wire refrescamiento_clock;  // entrada de refrescamiento de reloj - refrescamiento de contador
wire  [1:0] refrescamiento; // refrescamiento de reloj
wire [3:0] DIGITO;
wire Z0;
wire Z1;
wire Z2;
wire Z3;

// wrapper del refrescamiento
divisor_clock refrescamiento_top (
.clk(clk),
.divisor(refrescamiento)
);


refrescamiento refrescamiento_inst(
.refrescamiento_clock(refrescamiento_clock),
.refrescamiento(refrescamiento)
);

control_anodo control_anodo_inst(
.refrescamiento(refrescamiento),
.anodo(anodo)
);


control_BCD control_BCD_inst(

.digito(switch[3:0]),
.refrescamiento(refrescamiento),
.DIGITO(DIGITO)

);

BCD_a_catodo_segundo BCD_a_catodo_segundo_inst (
.digito(DIGITO),
.catodo_seg(catodo_seg)

);

BCD_a_catodo BCD_a_catodo_inst (
.digito(DIGITO),
.catodo(catodo)

);

codigo_gray codigo_gray_inst(
.A0(switch[0]),
.A1(switch[1]),
.A2(switch[2]),
.A3(switch[3]),
.Z0(Z0),
.Z1(Z1),
.Z2(Z2),
.Z3(Z3),
.digito(DIGITO)

);        


endmodule
