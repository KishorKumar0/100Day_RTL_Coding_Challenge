`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 22.12.2023 21:27:35
// Design Name: Ring Counter
// Module Name: ring_counter
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

module ring_counter(
    Clock,
    Reset,
    Count_out
    );

    input Clock;
    input Reset;
    output [3:0] Count_out;
    reg [3:0] Count_temp;

    always @(posedge Clock)
    begin
        if(Reset == 1'b1)   begin  
            Count_temp = 4'b0001;   end  
        else if(Clock == 1'b1)  begin  
            Count_temp = {Count_temp[2:0],Count_temp[3]};   end 
    end
    
    assign Count_out = Count_temp;
    
endmodule
