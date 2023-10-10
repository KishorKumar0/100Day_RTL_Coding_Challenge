`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.10.2023 01:29:49
// Design Name: 2 to 1 mux structural modeling
// Module Name: m21
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


module and_gate(output a, input b, c);
assign a = b & c;
endmodule

module not_gate(output d, input e);
assign d = ~ e;
endmodule

module or_gate(output l, input m, n);
assign l = m | n;
endmodule

module m21(Y, D0, D1, S);
output Y;
input D0, D1, S;
wire T1, T2, T3;
and_gate u1(T1, D1, S);
not_gate u2(T2, S);
and_gate u3(T3, D0, T2);
or_gate u4(Y, T1, T3);
endmodule
