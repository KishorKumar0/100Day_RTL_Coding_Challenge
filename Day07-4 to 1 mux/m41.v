`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.10.2023 22:39:15
// Design Name: 4 to 1 mux data flow modeling
// Module Name: m41
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


module m41 ( input a, 
input b, 
input c, 
input d, 
input s0, s1,
output out); 

 assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 

endmodule
