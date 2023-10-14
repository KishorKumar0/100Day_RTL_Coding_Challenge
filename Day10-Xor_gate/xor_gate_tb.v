`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.10.2023 23:56:14
// Design Name: 
// Module Name: xor_tb
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


module xor_tb();
reg A, B;
wire Y;

xor_gate uut (Y, A, B);

initial begin   
 A = 0; B = 0;
 #200 A = 0; B = 1;
 #200 A = 1; B = 0; 
 #200 A = 1; B = 1; 

end
endmodule
