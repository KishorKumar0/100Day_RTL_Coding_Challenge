`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.10.2023 01:30:50
// Design Name: 
// Module Name: m21_tb
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


module m21_tb();
wire out;
reg d0, d1, s;
m21 name(.Y(out), .D0(d0), .D1(d1), .S(s));
initial
begin
d0=1'b0;
d1=1'b0;
s=1'b0;
#100 $finish;
end
always #40 d0=~d0;
always #20 d1=~d1;
always #10 s=~s;
always@(d0 or d1 or s)
$monitor("At time = %t, Output = %d", $time, out);
endmodule
