`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 14.12.2023 18:59:19
// Design Name: D Flip Flop
// Module Name: d_ff
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

//D flip-flop without reset

module d_ff(clk,d,q);
input clk,d;
output reg q;

always @ (posedge clk)begin
    q <= d;
end
                
endmodule


//D flip-flop with synchronous reset

module d_ff(clk,reset,d,q);
input clk,reset,d;
output reg q;

always @ (posedge clk)begin
    if(~reset)
        q <= 0;
    else
        q <= d;
end
                
endmodule


//D flip-flop with asynchronous reset
module d_ff(clk,reset,d,q);
input clk,reset,d;
output reg q;

always @ (posedge clk or negedge reset)begin
    if(~reset)
        q <= 0;
    else
        q <= d;
end
                
endmodule
