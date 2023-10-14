`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.10.2023 23:55:01
// Design Name: 
// Module Name: xor_gate
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


module xor_gate(output reg Y, input A, B);
always @ (A or B) begin
    if (A == B) begin
        Y = 1'b0; 
   end     
   else 
       Y = 1'b1; 
 end
endmodule

