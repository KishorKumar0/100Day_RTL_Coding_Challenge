`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 15.12.2023 18:45:36
// Design Name: T Flip Flop
// Module Name: T_ff
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


module t_ff(input clk, input rstn,
  input t,
  output reg q,
  output q_bar
  );
  
  always@(posedge clk or negedge rstn) begin // for asynchronous reset
  //always@(posedge clk) begin // for synchronous reset
    if(!rstn) q <= 0;
    else begin
      q <= (t?~q:q);
    end
  end
  assign q_bar = ~q;
endmodule
