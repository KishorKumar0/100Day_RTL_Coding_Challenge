`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 18.12.2023 22:41:51
// Design Name: 4 bit Up/Down Counter
// Module Name: counter
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


module counter(
    Clk,
    reset,
    UpOrDown,  
    Count
    );

    
    
    input Clk,reset,UpOrDown;
    output [3 : 0] Count;
    reg [3 : 0] Count = 0;  
    
     always @(posedge(Clk) or posedge(reset))
     begin
        if(reset == 1) 
            Count <= 0;
        else    
            if(UpOrDown == 1)   //Up mode selected
                if(Count == 15)
                    Count <= 0;
                else
                    Count <= Count + 1; //Incremend Counter
            else  //Down mode selected
                if(Count == 0)
                    Count <= 15;
                else
                    Count <= Count - 1; //Decrement counter
     end    
    
endmodule
