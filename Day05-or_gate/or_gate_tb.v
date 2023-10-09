`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 09.10.2023 20:17:00
// Design Name: 
// Module Name: or_gate_tb
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


module or_gate_tb();
reg a,b;
wire y;

or_gate uut(a,b,y);

initial begin
a=0;b=0;
#100
a=0;b=1;
#100
a=1;b=0;
#100
a=1;b=1;
#100
$finish();
end

endmodule
