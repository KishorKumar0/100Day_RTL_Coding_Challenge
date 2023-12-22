`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 22.12.2023 21:29:41
// Design Name: Ring Counter
// Module Name: ring_counter_tb
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


module ring_counter_tb();

    reg Clock;
    reg Reset;

    wire [3:0] Count_out;

    ring_counter uut (
        .Clock(Clock), 
        .Reset(Reset), 
        .Count_out(Count_out)
    );

    initial Clock = 0; 
    always #10 Clock = ~Clock; 
    
    initial begin
        Reset = 1; 
        #20;       
        Reset = 0; 
    end
      
endmodule
