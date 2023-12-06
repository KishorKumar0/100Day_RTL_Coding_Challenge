`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 06.12.2023 17:30:20
// Design Name: Structural Design of 4 to 2 priority Encoder
// Module Name: pri_encode_42
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
module or_gate(c,a,b);
    input a,b;
    output c;
    assign c = a|b;
endmodule

module not_gate(f,e);
    input e;
    output f; 
    assign f = ~e;
endmodule

module and_gate(z,x,y); 
    input x,y; 
    output z; 
    assign z = x & y;
endmodule

module pri_encode_42(I, Y, V);
    input [3:0]I;
    output [1:0]Y;
    output V;
    
    not_gate u1(.f(I2bar),.e(I[2]));
    and_gate u2(.z(w1),.x(I2bar),.y(I[1]));
    or_gate u3(.c(Y[1]),.a(I[3]),.b(I[2]));
    or_gate u4(.c(Y[0]),.a(I[3]),.b(w1));
    
    assign V = I[3] | I[2] | I[1] | I[0];
endmodule
