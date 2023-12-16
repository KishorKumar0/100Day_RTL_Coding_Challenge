`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 16.12.2023 20:57:11
// Design Name: J K Flip Flop
// Module Name: jk_ff_tb
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


module jk_ff_tb();
reg clk,rst,j,k;
wire q,q_bar;

  jk_ff test_design(j,k,clk,rst,q,q_bar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst<=1;
     #10;

     rst<=0;
     j <= 1'b0;
     k <= 1'b1;     
     #10;
    
     j <= 1'b1;
     k <= 1'b0;     
     #10;
     
     j <= 1'b1;
     k <= 1'b1;     
     #10;
     
     j <= 1'b0;
     k <= 1'b0;
     #10;
  
     $finish;
    end 
endmodule


