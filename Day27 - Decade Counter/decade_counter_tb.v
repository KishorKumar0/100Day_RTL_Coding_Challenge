`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.12.2023 23:34:05
// Design Name: Decade Counter
// Module Name: decade_counter_tb
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


module decade_counter_tb;
reg en,clock;
wire [3:0] count;
  
decade_counter dut(.en(en), .clock(clock), .count(count));
initial begin
$display($time, " << Starting the Simulation >>");
    en=0;
    clock=0;
   #50 en=1'd1;
end
  
  always
    #25 clock=~clock; 
  
  initial
    $monitor ( $time , "clock= %b, count= %d, en= %b",    clock,count, en);
  
endmodule
