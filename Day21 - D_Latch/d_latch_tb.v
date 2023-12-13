`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.12.2023 00:12:19
// Design Name: D_Latch
// Module Name: d_latch_tb
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


module d_latch_tb();
   
  reg d;  
   reg en;  
   reg rstn;    
   integer i;  
   
    d_latch  dl0 (.d(d),  
                  .en (en),  
                  .rstn (rstn),  
                  .q (q));  
              
    initial begin  
        $monitor ("[%0t] en=%0b d=%0b q=%0b", $time, en, d, q); 
      
    d <= 0;  
    en <= 0;  
    rstn <= 0; 
    
    #25 rstn <= 1;  
    
    for (i = 0; i < 5; i=i+1) begin  
         #50 en <= ~en;  
         #100 d <= i;  
      end  
   end  

endmodule
