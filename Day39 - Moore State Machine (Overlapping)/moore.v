`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.01.2024 03:04:55
// Design Name: Overlapping Moore Sequence Detector "1011"
// Module Name: moore
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


module moore(input clk,
             input rst,
             input in,
             output reg out);

    parameter s0 = 0, s1 = 1, s10 = 2, s101 = 3, s1011 = 4;
    
    reg[2:0] PS, NS;
    
    always @(posedge clk) begin
        if(rst) begin
            out <= 0;
            PS <= s0;
            NS <= s0;
        end
        else begin
            PS <= NS;
        end
    end
    always @(PS, in) begin
        case(PS)
            s0: begin
                out = 0;
                NS = in ? s1 : s0;
            end
            s1: begin
                out = 0;
                NS = in ? s1 : s10;
            end
            s10: begin
                out = 0;
                NS = in ? s101 : s0;
            end
            s101: begin
                out = 0;
                NS = in ? s1011 : s10;
            end
            s1011: begin
                out = 1;
                NS = in ? s1 : s10;
            end
            default: begin
                NS = s0;
                out = 0;
            end
        endcase
    end
    
endmodule
