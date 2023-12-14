`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.12.2023 19:10:00
// Design Name: D Flip Flop
// Module Name: d_ff_tb
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


//D flip-flop without reset
module d_ff_tb;

  reg clk;
  reg d;
  wire q;

  d_ff dut (
    .clk(clk),
    .d(d),
    .q(q)
  );

  initial begin
    clk = 0;
    forever #50 clk = ~clk;
  end

  initial begin
    d = 0;
    #80 d <= 1;
    #100 d <= 0;
    #100 d <= 1;
    #100 d <= 0;

    #100 $finish; 
  end
  always @(posedge clk) $display("Time: %t, Input D: %b, Output Q: %b", $time, d, q);
endmodule 



//D flip-flop with syncronous & asynchronous reset

module d_ff_tb;

  reg clk;
   reg reset;
  reg d;
  wire  q;

  d_ff dut (
    .clk(clk),
    .d(d),
    .q(q),
    .reset(reset)
  );

  initial begin
    clk = 0;
    forever #50 clk = ~clk;
  end

  initial begin
    reset = 0;
    d <= 0; 
    #80 reset = 1; d <= 1;
    #100 d <= 0;
    #100 d <= 1;
    #80 reset = 0;
    #100 d <= 0;

    #100 $finish; 
  end
  always @(posedge clk) $display("Time: %t, Input D: %b, Output Q: %b", $time, d, q);
endmodule
