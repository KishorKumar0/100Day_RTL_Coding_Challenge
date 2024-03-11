`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 12.03.2024 00:13:39
// Design Name: Dual Sequence Detector using Mealy Machine(101 and 0110)
// Module Name: dual_seq_detector
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


module dual_seq_detector(input din,clk,reset,
	output reg y);
	
	reg[2:0] cst, nst;	
	parameter S0=3'b000,
              S1=3'b001,
              S2=3'b010,
              S3=3'b011,
              S4=3'b100,
              S5=3'b101;
				 
	always@ (posedge clk)
	begin
		if(reset)
			cst<=S0;
		else
			cst<=nst;
	end
	
	always @(cst or din)
	begin
		case(cst)
			S0: if(din==1'b1)
					begin
						nst<=S1;
						y<=1'b0;
					end
				 else
					begin
						nst<=S2;
						y<=1'b0;
					end
				
			S1: if(din==1'b1)
					begin
						nst<=S1;
						y<=1'b0;
					end
				 else
					begin
						nst<=S3;
						y<=1'b0;
					end
					
			S2: if(din==1'b1)
					begin
						nst<=S4;
						y<=1'b0;
					end
				 else
					begin
						nst<=S2;
						y<=1'b0;
					end
					
			S3: if(din==1'b1)
					begin
						nst<=S4;
						y<=1'b1;
					end
				 else
					begin
						nst<=S2;
						y<=1'b0;
					end
			
		    S4: if(din==1'b1)
					begin
						nst<=S5;
						y<=1'b0;
					end
				 else
					begin
						nst<=S3;
						y<=1'b0;
					end
					
			S5: if(din==1'b1)
					begin
						nst<=S1;
						y<=1'b0;
					end
				 else
					begin
						nst<=S3;
						y<=1'b1;
					end
					
		default: nst<=S0;
		endcase
	end
endmodule
