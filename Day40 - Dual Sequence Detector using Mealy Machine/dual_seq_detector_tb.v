`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 12.03.2024 00:16:25
// Design Name: Dual Sequence Detector using Mealy Machine(101 and 0110)
// Module Name: dual_seq_detector_tb
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


module dual_seq_detector_tb();
reg din,clk,reset;
wire y;

dual_seq_detector dut(din,clk,reset,y);

initial begin
clk= 1'b0;
forever #5 clk= ~clk;
end

initial begin
reset= 1'b1;
#10 reset= 1'b0;
#5 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
end

initial begin
$monitor("\t\t clock: %d  input: %d   detect: %d",clk, din, y);
#180 $finish;
end
endmodule
