`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 04.12.2023 22:22:14
// Design Name: 2 to 4 Decoder behavioral medeling 
// Module Name: decode2to4_tb
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


module decode2to4_tb();


  reg a,b,en;

  wire [3:0]y;

  Decode2to4 dut(en,a,b,y);

  initial
    begin
      $monitor("en=%b a=%b b=%b y=%b",en,a,b,y);
      en=1;a=1'bx;b=1'bx;#5
      en=0;a=0;b=0;#5
      en=0;a=0;b=1;#5
      en=0;a=1;b=0;#5
      en=0;a=1;b=1;#5

      $finish;
    end
endmodule
