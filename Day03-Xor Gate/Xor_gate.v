`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumae
// 
// Create Date: 06.10.2023 19:54:34
// Design Name: Xor Gate Behavioral Design
// Module Name: xor_gate
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


module xor_gate(c,a,b);
input a,b;
output c;
reg c;
always@(a,b)

begin
if(a==0 & b===0)
c=0;
else if(a==1 & b==1)
c=0;
else
c=1;
end
endmodule
