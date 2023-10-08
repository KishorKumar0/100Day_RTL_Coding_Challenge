`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 19:37:14
// Design Name: Kishor Kumar
// Module Name: and_gate_tb
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


module and_gate_tb();
reg a;
reg b;

wire y;

And_gate uut(.a(a),.b(b),.y(y));
initial 
begin
a=0;b=0;
#200 a=0;b=1;
#200 a=1;b=0;
#200 a=1;b=1;
#200;
end
endmodule
