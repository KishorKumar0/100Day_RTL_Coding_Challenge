`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.01.2024 02:48:43
// Design Name: Overlapping Mealy Sequence Detector "1011"
// Module Name: mealy_tb
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


module mealy_tb();
    reg CLK, IN, RST;
    wire OUT;
    
    mealy DUT(.out(OUT), .clk(CLK), .in(IN), .rst(RST));
    
    initial begin
        CLK = 1'b0;
        RST = 1'b0;
        #15 RST = 1'b0;
    end
    
    initial forever #5 CLK = ~CLK;
    
    initial begin
        $monitor("%t ns, IN = %b, OUT = %b, state = %d",$time, IN, OUT, DUT.state);
    end
    
    initial begin
        IN = 0;
        #15 IN=1; #10 IN=0; #10 IN=1; #10 IN=1;
        #10 IN=0; #10 IN=1; #10 IN=1; #10 IN=0;
        #10 IN=1;
        #20 $finish;
    end
        
endmodule
