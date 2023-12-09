`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 10.12.2023 00:00:48
// Design Name: 4-bit Gray code to binary conversion
// Module Name: g2b_tb
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


module g2b_converter_tb();
    parameter N=4;
    reg [N-1:0]gray;
    wire [N-1:0]bin;
    integer i;

    g2b_converter uut (
        .binary(bin),
        .gray(gray)
    );

    initial begin
        for(i = 0;i < 19;i = i+1) 
        begin
            gray = i; 
            #50; 
        end 
    end
     initial begin
        $monitor("time=%0t bin=%d gray=%d", $time, bin, gray);
     end 
endmodule  
         
