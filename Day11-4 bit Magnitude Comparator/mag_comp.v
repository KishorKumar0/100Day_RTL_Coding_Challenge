`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 02.12.2023 19:06:03
// Design Name: 4-bit magnitude comparator
// Module Name: mag_comp
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


module mag_comp(
  input [3:0] A,
  input [3:0] B,
  output reg EQ,
  output reg GT,
  output reg LT
);
  always @(A, B) begin
    if (A == B) 
    begin
      EQ = 1;
      GT = 0;
      LT = 0;
   end
    else if (A > B)
    begin
      EQ = 0;
      GT = 1;
      LT = 0;
    end 
    else begin
      EQ = 0;
      GT = 0;
      LT = 1;
    end
  end
  
endmodule
