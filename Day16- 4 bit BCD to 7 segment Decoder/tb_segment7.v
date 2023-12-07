`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 07.12.2023 22:53:44
// Design Name: 4 bit BCD to & segment display Decoder
// Module Name: tb_segment7
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

module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    segment7 uut (
        .bcd(bcd), 
        .seg(seg)
    );

    initial begin
        for(i = 0;i < 21;i = i+1) 
        begin
            bcd = i; 
            #50; 
        end 
    end
     initial begin
        $monitor("time+",$time, "bcd=%d seg=%d", bcd,seg);
     end 
endmodule
