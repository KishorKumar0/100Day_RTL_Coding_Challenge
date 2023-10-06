`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 05.10.2023 21:49:58
// Design Name: 
// Module Name: Full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Gate Level Modeling
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_adder (
    input A,
    input B,
    input cin,
    output sum,
    output cout
);

xor(s1,A,B);
and(c1,A,B);
xor(sum,s1,cin);
and(c2,s1,cin);
or(cout,c1,c2);

endmodule
