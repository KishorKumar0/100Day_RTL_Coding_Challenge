`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 12.03.2024 23:55:18
// Design Name: One-HOT Finite State Machine
// Module Name: one_hot_fsm_tb
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


module one_hot_fsm_tb();
reg clk, reset;
wire [3:0] state;
wire [1:0] out;

one_hot_fsm dut(clk, reset, state, out);

initial begin
  clk = 0;
  forever #10 clk = ~clk;
end 

initial begin
  reset = 1;
  #20 reset = 0;
end 

initial begin
  $monitor("\t\t State: %b   Output: %b", state, out);
  #170 $finish;
end
endmodule
