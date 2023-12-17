`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 17.12.2023 21:12:26
// Design Name: 4 bit Universal Shift Register
// Module Name: uni_shift_reg
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
module dff(Out , D , clk , clear);

input D , clk , clear;
output reg Out;

always@(posedge clk , negedge clear)
begin
	
	if(clear == 1'b0)
		Out <= 1'b0;
	else
		Out <= D;
	
end
endmodule


module m41(Mux_Out , S , in0 , in1 , in2 , in3);

output reg Mux_Out;
input [1:0] S;
input in0 , in1 , in2 , in3;

always@(*)
begin
	case(S)
		
		2'b00 : Mux_Out = in0;
		2'b01 : Mux_Out = in1;
		2'b10 : Mux_Out = in2;
		2'b11 : Mux_Out = in3;
	endcase
end

endmodule


module uni_shift_reg(Out , clk , clear , S , I, SIL, SIR);

input clk , clear ;
input [1 : 0] S ; 
input [3 : 0] I; 
input SIL, SIR;
output [3 : 0] Out;
wire [3 : 0] D_temp;

m41 inst1(D_temp[0] , S , Out[0] , Out[1] , SIL, I[0]);
m41 inst2(D_temp[1] , S , Out[1] , Out[2] , Out[0] , I[1]);
m41 inst3(D_temp[2] , S , Out[2] , Out[3] , Out[1] , I[2]);
m41 inst4(D_temp[3] , S , Out[3] , SIR, Out[2] ,I[3]);

dff D_inst1(Out[0] , D_temp[0] , clk , clear);
dff D_inst2(Out[1] , D_temp[1] , clk , clear);
dff D_inst3(Out[2] , D_temp[2] , clk , clear);
dff D_inst4(Out[3] , D_temp[3] , clk , clear);

endmodule
