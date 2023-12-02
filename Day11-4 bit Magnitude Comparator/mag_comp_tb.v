`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 02.12.2023 19:08:27
// Design Name: 4-bit Magnitude Comparator
// Module Name: mag_com_tb
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


module mag_comp_tb();



  parameter WIDTH = 4;


  reg [WIDTH-1:0] A, B;


  wire EQ, GT, LT;


  mag_comp uut (
    .A(A),
    .B(B),
    .EQ(EQ),
    .GT(GT),
    .LT(LT)
  );


  reg clk = 0;
  always #5 clk = ~clk;


  initial begin

    A = 4'b0101;
    B = 4'b0101;
    #10;
    $display("Test 1: A equals B. EQ=%b, GT=%b, LT=%b", EQ, GT, LT);

    A = 4'b1100;
    B = 4'b1010;
    #10;
    $display("Test 2: A is greater than B. EQ=%b, GT=%b, LT=%b", EQ, GT, LT);

    A = 4'b0011;
    B = 4'b1100;
    #10;
    $display("Test 3: A is less than B. EQ=%b, GT=%b, LT=%b", EQ, GT, LT);

    $stop;
  end

endmodule
