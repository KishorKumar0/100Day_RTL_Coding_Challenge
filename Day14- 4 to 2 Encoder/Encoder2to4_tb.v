`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 05.12.2023 23:30:49
// Design Name: Behavioral Design of 4 to 2 Encoder
// Module Name: encode2to4_tb
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


module encode4to2_tb();
reg [3:0]A;
wire [1:0]B;

encode4to2 uut (.A(A),.B(B));

initial
begin

A = 0;
#100;

#100 A = 4'b0000;
#100 A = 4'b1000;
#100 A = 4'b0100;
#100 A = 4'b0010;
#100 A = 4'b0001;
#100 A = 4'b1010;
#100 A = 4'b1111;

end
initial begin
$monitor("A = %b B = %b",A, B);
end

endmodule
