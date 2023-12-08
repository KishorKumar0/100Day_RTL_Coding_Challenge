`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 08.12.2023 13:50:47
// Design Name: 4 bit  binary to gray code converter
// Module Name: bin2gray_tb
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

module bin2gray_tb;

    parameter N=4;
    reg [N-1:0]bin;
    wire [N-1:0]gray;
    integer i;

    bin2gray uut (
        .bin(bin),
        .gray(gray)
    );

    initial begin
        for(i = 0;i < 19;i = i+1) 
        begin
            bin = i; 
            #50; 
        end 
    end
     initial begin
        $monitor("time=%0t bin=%d gray=%d", $time, bin, gray);
     end 
endmodule 



