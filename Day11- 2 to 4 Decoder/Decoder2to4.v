`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 04.12.2023 22:10:11
// Design Name: 2 to 4 Decoder behavioral medeling 
// Module Name: Decode2to4
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


module Decode2to4(en,a,b,y);
   input en,a,b;

   output reg [3:0]y;
   
   always @(en,a,b)
     begin
       if(en==0)
         begin
           if(a==1'b0 & b==1'b0) y=4'b1110;
           else if(a==1'b0 & b==1'b1) y=4'b1101;
           else if(a==1'b1 & b==1'b0) y=4'b1011;
           else if(a==1 & b==1) y=4'b0111;
           else y=4'bxxxx;
         end
       else
        y=4'b1111;
     end
endmodule
