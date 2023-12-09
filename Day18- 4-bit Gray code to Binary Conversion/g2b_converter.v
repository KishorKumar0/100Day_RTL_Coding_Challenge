`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 09.12.2023 23:55:59
// Design Name: 4-bit Gray code to binary conversion
// Module Name: g2b_convertor
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


module g2b_converter #(parameter WIDTH=4) (input [WIDTH-1:0] gray, output [WIDTH-1:0] binary);
  genvar i;
  generate
    for(i=0; i<WIDTH; i= i+1) begin
      assign binary[i] = ^(gray >> i);
    end
  endgenerate
endmodule

