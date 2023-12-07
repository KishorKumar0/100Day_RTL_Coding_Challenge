`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 07.12.2023 22:52:18
// Design Name: 4 bit BCD to & segment display Decoder
// Module Name: segment7
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


module segment7(
     bcd,
     seg
    );
     
     input [3:0] bcd;
     output [6:0] seg;
     reg [6:0] seg;

    always @(bcd)
    begin
        case (bcd)
            0 : seg = 7'b1111110;
            1 : seg = 7'b0110000;
            2 : seg = 7'b1101101;
            3 : seg = 7'b1111001;
            4 : seg = 7'b0110011;
            5 : seg = 7'b1011011;
            6 : seg = 7'b1011111;
            7 : seg = 7'b1110000;
            8 : seg = 7'b1111111;
            9 : seg = 7'b1111011;
            default : seg = 7'b0000000; 
        endcase
    end
    
endmodule
