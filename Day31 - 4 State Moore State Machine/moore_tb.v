`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 02.01.2024 02:00:48
// Design Name: Moore State Machine
// Module Name: moore_tb
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


module moore_tb();

    reg clk;
    reg reset;
    reg inbit;

    
    wire detect;
    
    moore uut(.clk(clk),.inbit(inbit), .reset(reset), .detect(detect));
    
    initial begin
        clk = 0;
        reset = 0;
        inbit = 0;
    end
    
    initial begin
        reset = 1;
        #15 reset = 0;
    end
    
    always begin
        #10 clk = !clk;
    end 
    
    always begin
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 1;
        #20 inbit = 0;
        #20 inbit = 0;
        #20 inbit = 0;
        #20 inbit = 1;
    end
    
    
endmodule
