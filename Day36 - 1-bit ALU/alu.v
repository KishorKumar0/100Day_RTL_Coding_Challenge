`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 07.01.2024 22:02:20
// Design Name: 1-bit ALU
// Module Name: alu
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


module alu(a, b, operation, Result);
      input a, b;
      input [1:0] operation;
      output Result;
      reg Result;

      always@(a or b or operation)
          begin
               case (operation)
                  2'b00:  Result = a & b;  
                  2'b01:  Result = a | b;   
                  2'b10:  Result = a +  b;    
                  2'b11:  Result = a - b;   
               endcase
           end

endmodule
