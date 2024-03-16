`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 16.03.2024 00:11:00
// Design Name: 4-bit binary multiplication
// Module Name: bin_mul_tb
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


module bin_mul_tb();
  reg [3:0] A, B;
  wire [7:0] P;
  
  bin_mul am(A,B,P);
  
  initial begin
    $monitor("A = %b: B = %b --> P = %b, P(dec) = %0d", A, B, P, P);
    A = 1; B = 0; #100;
    A = 7; B = 5; #100;
    A = 8; B = 9; #100;
    A = 4'hf; B = 4'hf; #100
    $finish();
  end
endmodule
