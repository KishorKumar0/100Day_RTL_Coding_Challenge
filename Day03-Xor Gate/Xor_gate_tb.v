`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 19:58:16
// Design Name: Kishor Kumar
// Module Name: xor_gate_tb
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


module xor_gate_tb();
reg a,b;
wire c;
xor_gate xor_gate(c,a,b);
initial
begin
a=0;b=0;
#200 a=0;b=1;
#200 a=1;b=0;
#200 a=1;b=1;
end

initial begin
$monitor ($time,"a=%b,b=%b,c=%b",a,b,c);
end

endmodule
