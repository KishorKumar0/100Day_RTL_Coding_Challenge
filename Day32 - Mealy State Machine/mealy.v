`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 03.01.2024 20:57:04
// Design Name: Mealy State Machine
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


module mealy(clk, reset, inbit, detect);

    input clk, reset, inbit;
    output reg detect;
    
    reg [1:0]state;
    
    always @(posedge clk, posedge reset)begin
    if(reset)begin
            detect <= 0;
            state <= 2'b00;
            end
    else begin
         case(state)
         2'b00:begin 
               if(inbit)begin 
                        state <= 2'b01;detect <= 0;
                        end
               else begin
                        state <= 2'b10;detect <= 0;
                    end
               end
         2'b01:begin 
               if(inbit)begin 
                        state <= 2'b00;detect <= 1;
                        end
               else begin
                        state <= 2'b10;detect <= 0;
                    end
               end
         2'b10:begin 
               if(inbit)begin 
                        state <= 2'b01;detect <= 0;
                        end
               else begin
                        state <= 2'b00;detect <= 1;
                    end
               end  
         default:begin
                    state <= 2'b00;detect <= 0;
                 end
         endcase
         end
    end
                                   
endmodule
