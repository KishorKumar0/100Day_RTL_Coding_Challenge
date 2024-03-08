`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.01.2024 03:22:53
// Design Name: Overlapping Moore Sequence Detector "1011"
// Module Name: moore_tb
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


module moore_tb();
    reg CLK, IN, RST;
    wire OUT;
    
    moore DUT(.out(OUT), .clk(CLK), .in(IN), .rst(RST));
    
    initial begin
        CLK = 1'b0;
        RST = 1'b0;
        #15 RST = 1'b0;
    end
    
    initial forever #5 CLK = ~CLK;
    
    initial begin
        $monitor("%t ns, IN = %b, OUT = %b, PS = %d, NS = %d",$time, IN, OUT, DUT.PS, DUT.NS);
    end
    
    initial begin
        IN = 0;
        #15 IN=1; #10 IN=0; #10 IN=1; #10 IN=1;
        #10 IN=0; #10 IN=1; #10 IN=1; #10 IN=0;
        #10 IN=1;
        #20 $finish;
    end
        
endmodule
