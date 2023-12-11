`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.12.2023 13:21:41
// Design Name: 4-bit Carry Lookahead Adder
// Module Name: cla_adder_tb
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


module cla_adder_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    wire [3:0] S;
    wire cout;  
    integer i, j, error;
    
    cla_adder uut (
        .A(A), 
        .B(B), 
        .cin(cin), 
        .S(S), 
        .cout(cout)
    );
//Stimulus block - all the input combinations are tested here.
//the number of errors are recorded in the signal named "error".
    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        error = 0;

        // For carry in = 0
        cin = 0;
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;
                if ({cout, S} !== (i + j))
                    error <= error + 1;
            end  
        end

        // For carry in = 1
        cin = 1; 
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;
                if ({cout, S} !== (i + j + 1))
                    error <= error + 1;
            end  
        end 

        // Display results
        $display("Test completed with %0d errors.", error);
     end
endmodule
