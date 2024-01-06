`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 20:39:18
// Design Name: 
// Module Name: reg_file
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


module reg_file(input clk,
                input rst,
                input wire [1:0] readAddr1, readAddr2,
                input wire [1:0] writeAddr,
                input wire writeEn,
                input wire [31:0] writeData,
                output reg [31:0] readData1, readData2
);

  reg [31:0] registers [0:3];

  always @(posedge clk) begin
    if (rst) begin
      registers[0] <= 32'h00000000;
      registers[1] <= 32'h00000000;
      registers[2] <= 32'h00000000;
      registers[3] <= 32'h00000000;
    end else begin
        registers[writeAddr] <= writeData;
      end
      readData1 <= registers[readAddr1];
      readData2 <= registers[readAddr2];
    end

endmodule
