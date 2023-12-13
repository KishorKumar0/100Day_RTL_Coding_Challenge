`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.12.2023 00:10:17
// Design Name: D_Latch
// Module Name: d_latch
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


module d_latch(input d,           
                  input en,            
                  input rstn,        
                  output reg q);
                  
always @ (en or rstn or d)  
      if (!rstn)  
         q <= 0;  
      else  
         if (en)  
            q <= d;  
            
endmodule
