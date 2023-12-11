`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.12.2023 19:29:30
// Design Name: 4-bit Ripple Carry Adder
// Module Name: tb_Rc_adder
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


module tb_Rc_adder();

    reg [3:0] A;
    reg [3:0] B;
    reg C_in;

    wire [3:0] Sum_out;
    wire C_out;

    RC_adder uut (
        .A(A), 
        .B(B), 
        .C_in(C_in), 
        .Sum_out(Sum_out), 
        .C_out(C_out)
    );

    initial begin
        A = 3;      B = 6;      C_in = 0;       #100;
        A = 5;      B = 7;      C_in = 1;       #100;
        A = 6;      B = 4;      C_in = 0;       #100;
        A = 8;      B = 9;      C_in = 1;       #100;
        A = 11;     B = 10;     C_in = 0;       #100;
        A = 13;     B = 11;     C_in = 1;       #100;
        A = 15;     B = 3;      C_in = 0;       #100;
        A = 0;      B = 0;      C_in = 1;       #100;
        A = 9;      B = 2;      C_in = 0;       #100;
        A = 14;     B = 1;      C_in = 1;       #100;
    end
      
endmodule

