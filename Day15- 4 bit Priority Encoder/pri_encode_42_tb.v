`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 06.12.2023 17:46:25
// Design Name: Structural Design of 4 to 2 priority Encoder
// Module Name: pri_encode_42_tb
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


module pri_encode_42_tb();
    reg [3:0]i;
    wire [1:0]y;
    wire v;
    
pri_encode_42 uut(.I(i),.Y(y),.V(v));

initial
begin
    i=0;
    
    #100 i = 4'b0000;
    #100 i = 4'b1000;
    #100 i = 4'b0100;
    #100 i = 4'b0010;
    #100 i = 4'b0001;
    #100 i = 4'b1010;
    #100 i = 4'b0110;
    #100 i = 4'b0011;
    #100 i = 4'b1111;
end
initial begin
$monitor ("time=",$time,,"y=%b i=%b v=%b", y,i,v);
end

endmodule
