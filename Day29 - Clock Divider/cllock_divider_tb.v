`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 21.12.2023 21:35:49
// Design Name: Clock Divider
// Module Name: Clock_divider_tb
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


module Clock_divider_tb();

    reg clk;
	reg rst;

	// Outputs
	wire divideby2;
	wire divideby4;
	wire divideby8;
	wire divideby16;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.divideby16(divideby16),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		#50 rst=1;
        
		// Add stimulus here

	end
	always
	#10 clk=~clk;
	
	initial 
	#1000 $finish;
      
endmodule

