`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 03.12.2023 14:18:20
// Design Name: 4 bit comparator using 2 bit comparator
// Module Name: four_bit_comp
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



module four_bit_comp(G, L, E, a, b);
    input [3:0]a,b;
    output G, L, E;
    wire  g1, g2, l1, l2, e1, e2;

    two_bit_comp c1(g2, l2, e2, a[3], a[2], b[3], b[2]);
    two_bit_comp c2(g1, l1, e1, a[1], a[0], b[1], b[0]);

    assign G = (g2) | (e2 & g1);
    assign L = (l2) | (e2 & l1);
    assign E = e1 & e2;

endmodule


module two_bit_comp(G ,L, E, a0, a1, b0, b1);
input a0, a1, b0, b1;
output G, L, E;

assign G = ((a1)&(~b1))|((a1)~^(b1))&((a0)&(~b0));
assign L = ((~a1)&(b1))|((a1)~^(b1))&((~a0)&(b0));
assign E = (a1~^b1) & (a0~^b0);

endmodule



