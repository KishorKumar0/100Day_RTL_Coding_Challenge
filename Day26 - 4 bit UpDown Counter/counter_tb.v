`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2023 22:52:43
// Design Name: 
// Module Name: counter_tb
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


`timescale 1ns / 1ps

module counter_tb;

  // Inputs
  reg Clk;
  reg reset;
  reg UpOrDown;

  // Outputs
  wire [3:0] Count;

  // Instantiate the counter module
  counter uut (
    .Clk(Clk),
    .reset(reset),
    .UpOrDown(UpOrDown),
    .Count(Count)
  );

  // Clock generation
  initial begin
    Clk = 0;
    forever #5 Clk = ~Clk;
  end

  // Test stimulus
  initial begin
    // Initialize inputs
    reset <= 1;
    UpOrDown <= 1; // Up mode initially

    // Apply reset
    #10 reset <= 0;

    // Test Up mode
    #10 UpOrDown = 1;
    #200;

    // Test Down mode
    UpOrDown <= 0;
    #200;

    // End simulation
    $finish;
  end

endmodule

