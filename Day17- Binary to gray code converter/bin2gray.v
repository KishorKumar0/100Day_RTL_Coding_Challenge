`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 08.12.2023 13:45:18
// Design Name: 4 bit  binary to gray code converte
// Module Name: bin2gray
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


module bin2gray
#(parameter N=4)
(input [N-1:0]bin, 
output [N-1:0]gray);

genvar i;
generate
    for(i=0; i<N-1; i=i+1)begin
        assign gray[i] = bin[i] ^ bin[i+1];
    end 
endgenerate

assign gray[N-1] = bin[N-1];
endmodule
