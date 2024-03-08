`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 19.01.2024 02:31:08
// Design Name: Overlapping Mealy Sequence Detector "1011"
// Module Name: mealy
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


module mealy(input clk,
             input rst,
             input in,
             output reg out
);

        parameter s0 = 0, s1 = 1, s10 = 2, s101 = 3;
        reg [1:0] state;
        
        always @(posedge clk) begin
            if(rst) begin
                out <= 0;
                state <= s0;
            end
            else begin
                case(state)
                    s0: begin
                        state <= in ? s1 : s0;
                        out <= 0;
                    end 
                    s1: begin
                        state <= in ? s1 : s10;
                        out <= 0;
                    end 
                    s10: begin
                        state <= in ? s101 : s0;
                        out <= 0;
                    end
                    s101: begin
                        state <= in ? s1 : s10;
                        out <= in ? 1 : 0;
                    end 
                    default: begin
                        state <= s0;
                        out <= 0;
                    end
                endcase
            end
        end
endmodule
                    
                    
                    
                   
