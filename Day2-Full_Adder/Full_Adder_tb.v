`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 05.10.2023 22:09:16
// Design Name: 
// Module Name: Full_adder_tb
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


module Full_adder_tb;

reg A, B, cin;
wire sum, cout;

// Instantiate the Full Adder module
Full_adder UUT (
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

// Stimulus generation
initial begin
                             // Initialize Inputs
                             A = 0;B = 0;cin = 0;
                             // Wait 100 ns for global reset to finish
                             #100;
                             // Add stimulus here
                             #100; A = 0;B = 0;cin = 1;
                             #100; A = 0;B = 1;cin = 0;
                             #100; A = 0;B = 1;cin = 1;
                             #100; A = 1;B = 0;cin = 0;
                             #100; A = 1;B = 0;cin = 1;
                             #100; A = 1;B = 1;cin = 0;
                             #100; A = 1;B = 1;cin = 1;
end

endmodule
