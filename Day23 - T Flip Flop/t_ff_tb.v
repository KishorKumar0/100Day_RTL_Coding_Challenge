`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 15.12.2023 18:48:14
// Design Name: T Flip Flop
// Module Name: T_ff_tb
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


module T_ff_tb();
    reg clk;
    reg rstn;
    reg t;
    wire q;
    
t_ff uut(.clk(clk), .rstn(rstn), .t(t), .q(q));

initial begin
    clk =0;
    forever #50 clk = ~clk;
end

initial begin
    rstn =0;
    t <= 0;
    
    #80 rstn =1; t<=1;
    #100 t <= 0;
    #100 t <= 1;
    #80 rstn = 0;
    #100 t <=0;
    
    $monitor ("T=%0t rstn=%0t t=%0d q=%0d", $time, rstn, t, q);
    #200 $finish;
end
endmodule
