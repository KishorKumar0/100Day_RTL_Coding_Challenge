`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 12.03.2024 23:53:45
// Design Name: One-HOT Finite State Machine
// Module Name: one_hot_fsm
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


module one_hot_fsm(
  input clk, reset,
  output reg [3:0] state,
  output reg [1:0]out);

parameter [3:0] IDLE = 4'b0001,
                STATE1 = 4'b0010,
                STATE2 = 4'b0100,
                STATE3 = 4'b1000;

always @(posedge clk, posedge reset) begin
  if (reset) 
    begin
        state <= IDLE;
        out<= 2'b00;
    end 
    
  else 
    begin
    
    case(state)
    
      IDLE: begin
        out<= 2'b00;
        state <= STATE1;
      end
      
      STATE1: begin
        out<= 2'b01;
        state <= STATE2;
      end
      
      STATE2: begin
        out<= 2'b10;
        state <= STATE3;
      end
      
      STATE3: begin
        out<= 2'b11;
        state <= IDLE;
      end
      
      default: state <= IDLE;
      
    endcase
  end
end
endmodule
