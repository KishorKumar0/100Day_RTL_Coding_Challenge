`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.12.2023 23:33:03
// Design Name: Decade Counter
// Module Name: dec_count
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


module decade_counter(en, clock, count);
input en, clock; 
 output reg [3:0] count;
  
  always @( posedge clock)
    begin
      if(en) 
        begin
          
    	  if ( count>=4'd0 && count<4'd10)
      	  count<=count+4'd1;
           
       	 else
          count<=4'd0;
          
        end
      
      else 
        count<=4'd0;
    end
endmodule
