`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 03.12.2023 14:37:35
// Design Name: 4 bit comparator using 2 bit comparator
// Module Name: four_bit_comp_tb
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



module four_bit_comp_tb();

  reg [3:0] a, b;
  wire G, L, E;
  four_bit_comp uut (
    .G(G),
    .L(L),
    .E(E),
    .a(a),
    .b(b)
  );


initial begin
a=4'b0000;b=4'b0000;
end
always #160 a[3]=~a[3];
always #80 a[2]=~a[2];
always #40 a[1]=~a[1];
always #20 a[0]=~a[0];
always #160 b[0]=~b[0];
always #80 b[1]=~b[1];
always #40 b[2]=~b[2];
always #20 b[3]=~b[3];
initial #320 $stop;
endmodule







