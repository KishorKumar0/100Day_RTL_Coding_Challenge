`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.12.2023 13:18:31
// Design Name: 4-bit Carry Lookahead Adder
// Module Name: cla_adder
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


module cla_adder
        (   input [3:0] A,B,
            input cin,
            output [3:0] S,
            output cout
            );
            
wire [3:0] P,G;
wire [4:0] C;   

assign P = A ^ B;
assign G = A & B;

cla_block gen_c(P,G,cin,C);

assign S = P ^ C[3:0];
assign cout = C[4];

endmodule

module cla_block
        (   input [3:0] P,G,
            input cin,
            output [4:0] C
            );
            
assign C[0] = cin;
assign C[1] = G[0] | (P[0] & cin);
assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin);
assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);

endmodule
