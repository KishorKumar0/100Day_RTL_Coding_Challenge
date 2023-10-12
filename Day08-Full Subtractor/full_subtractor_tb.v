`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 12.10.2023 22:45:39
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg a, b, bin;
wire d, bout; 


full_subtractor instantiation(.A(a), .B(b), .Bin(bin), .D(d), .Bout(bout));
initial
begin

a=0; 
b=0; 
bin=0;
#100 $finish;

end

always #40 a=~a;
always #20 b=~b;
always #10 bin=~bin;
always @(a or b or bin)

   $monitor("At TIME(in ns)=%t, A=%d B=%d Bin=%d D = %d Bout = %d", $time, a, b, bin, d, bout);

endmodule

