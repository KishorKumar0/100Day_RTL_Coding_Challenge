`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 17.12.2023 21:12:26
// Design Name: 4 bit Universal Shift Register
// Module Name: uni_shift_reg_tb
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

module uni_shift_reg_tb();

    reg clk;
    reg clear;
    reg [1:0] S;
    reg [3:0] I;
    reg SIL;
    reg SIR;

    wire [3:0] Out;

    uni_shift_reg uut(
        .Out(Out),
        .clk(clk),
        .clear(clear),
        .S(S),
        .I(I),
        .SIL(SIL),
        .SIR(SIR)
    );

    initial begin
        $dumpfile("uni_shift_reg_tb.vcd");
        $dumpvars(0, uni_shift_reg_tb);

        // Initialize inputs
        clk = 0;
        clear = 1;
        S = 2'b00;
        I = 4'b0000;
        SIL = 0;
        SIR = 1;

        // Apply initial conditions
        #10 clear = 0;

        // Clock toggling and input changes
        repeat (10) begin
            #5 clk = ~clk;
        end

        // Add more test scenarios as needed

        #100 $finish;
    end

    always #5 clk = ~clk; // Clock toggling

endmodule
