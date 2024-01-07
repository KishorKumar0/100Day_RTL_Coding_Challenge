`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 07.01.2024 22:05:31
// Design Name: 1-bit ALU
// Module Name: alu_tb
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


module alu_tb();

   reg a, b;
   reg [1:0] operation;

   wire Result;

   alu uut (
      .a(a),
      .b(b),
      .operation(operation),
      .Result(Result)
   );

   reg clk = 0;
   always #5 clk = ~clk;

   initial begin
      a = 1; b = 1; operation = 2'b00;
      #10 $display("Result for AND operation: %b", Result);

      a = 0; b = 1; operation = 2'b01;
      #10 $display("Result for OR operation: %b", Result);

      a = 1; b = 1; operation = 2'b10;
      #10 $display("Result for Addition operation: %b", Result);

      a = 0; b = 1; operation = 2'b11;
      #10 $display("Result for Subtraction operation: %b", Result);


      #10 $finish;
   end

endmodule


