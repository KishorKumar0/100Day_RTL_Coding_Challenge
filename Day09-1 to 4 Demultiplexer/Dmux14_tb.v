`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 13.10.2023 21:25:06
// Design Name: 
// Module Name: dmux14_tb
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


module dmux14_tb();

wire [3:0] Y; 
reg [1:0] A;
reg din; 

dmux14 I0 (Y, A, din); 
initial begin 
din = 1;
A[1] = 0; A[0] = 0; 
 #200 A[1] = 0; A[0] = 1; 
 #200 A[1] = 1; A[0] = 0;
 #200 A[1] = 1; A[0] = 1; 
end 

initial begin
$monitor("%t, Din = %d, A[1] = %d, A[0] = %d, Y[0] = %d, Y[1] = %d, Y[2] = %d, Y[3] = %d", $time, din, A[1], A[0], Y[0], Y[1], Y[2], Y[3]); 
end 

endmodule
