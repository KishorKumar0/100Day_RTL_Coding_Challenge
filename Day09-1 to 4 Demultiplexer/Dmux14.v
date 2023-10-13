`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 13.10.2023 21:24:10
// Design Name: 1 to 4 using behavioral Modeling
// Module Name: dmux14
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


module dmux14(output [3:0] Y, input [1:0] A, input din);
assign Y[0] = din & (~A[0]) & (~A[1]);
assign Y[1] = din & (~A[1]) & A[0];
assign Y[2] = din & A[1] & (~A[0]);
assign Y[3] = din & A[1] & A[0];
endmodule
