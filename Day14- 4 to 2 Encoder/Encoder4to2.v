`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 05.12.2023 23:22:01
// Design Name: Behavioral Design of 4 to 2 Encoder
// Module Name: encode2to4
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


module encode4to2(A,B);

output [1:0]B;
input  [3:0]A;

reg [1:0]B;
wire [3:0]A;

always @ (A)
    begin
        case(A)
        8: B = 0;
        4: B = 1;
        2: B = 2;
        1: B = 3;
        default: B = 1'bz;
        endcase
    end
endmodule
