`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 08.01.2024 23:37:40
// Design Name: Airthmatic and logic Unit
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
//Inputs
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 alu test_unit(
            A,B,  // ALU 8-bit Inputs                 
            ALU_Sel,// ALU Selection
            ALU_Out, // ALU 8-bit Output
            CarryOut // Carry Out Flag
     );
    initial begin
    // hold reset state for 100 ns.
      A = 8'h0A;
      B = 4'h02;
      ALU_Sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 8'h01;
       #10;
      end;
      
      A = 8'hF6;
      B = 8'h0A;
      #10 $finish;
      
    end
    
        
endmodule
