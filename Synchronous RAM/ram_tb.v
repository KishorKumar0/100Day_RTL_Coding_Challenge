`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 04.01.2024 21:54:46
// Design Name: 1 kilo byte Syncronous Ram
// Module Name: ram_tb
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


module ram_tb;

reg clk;
reg write_enable;
reg [9:0]address;
reg [7:0]data_in;
wire [7:0]data_out;

ram uut(clk,write_enable,address,data_in,data_out);

initial begin
clk = 0;
data_in = 8'h56;
write_enable = 0;
address = 55;
#20
write_enable = 1;
#20;
write_enable = 0;
address = 66;
data_in = 8'h36;
#20
write_enable = 1;
#20 
write_enable = 0;
#20
address = 55;
#20
$finish();

end

always #10 clk = ~clk; 
endmodule
