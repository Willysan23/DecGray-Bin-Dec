`timescale 1ns / 1ps

// refrescamiento del contador 

module refescamiento(
input refrescamiento_clock,
input reset,
output reg [1:0] refrescamiento = 0

);
always@(posedge refrescamiento_clock or posedge reset) 
    begin
    if(reset == 1)
        refrescamiento <= 0;
    else 
        refrescamiento <= refrescamiento +1;
    end
    
endmodule



