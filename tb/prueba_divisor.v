`timescale 1ns / 1ps

module prueba_divisor;
reg clk = 0; // 100Mhz
wire divisor;

divisor_clock UUT (
.clk(clk),
.divisor(divisor)
);

always #5 clk = ~clk;

endmodule
