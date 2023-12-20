`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 20.12.2023 23:33:36
// Design Name: Master Slave JK Flip Flop
// Module Name: master_slave_jk_tb
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


module master_slave_jk_tb();

    reg clk;
    reg s;
	reg r;
	

	wire qn;
	wire qn_bar;

	master_slave_jk uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.qn(qn), 
		.qn_bar(qn_bar)
	);

	initial begin
	clk=0;
	#20 s = 0;r = 0;
	#20 s = 0;r = 1;
   #20 s = 1;r = 0;
   #20 s = 1;r = 1;	
	#20 s = 0;r = 0;
   #20 s = 0;r = 1;
	end
	always #10 clk=~clk;
	
initial
begin
$monitor("S=%b, R=%b, Q=%b, Q_bar=%b",s,r,qn,qn_bar);
#130 $finish;
end
endmodule

