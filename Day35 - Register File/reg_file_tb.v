`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 21:04:31
// Design Name: 
// Module Name: reg_file_tb
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


module reg_file_tb();

  parameter DataWidth  = 32;
  parameter NumRegs    = 4;
  parameter IndexWidth = $clog2(NumRegs);

  reg clk;
  reg rst;
  reg writeEn;
  reg [IndexWidth-1:0] writeAddr;
  reg [DataWidth-1:0] writeData;
  reg [IndexWidth-1:0] readAddr1;
  reg [IndexWidth-1:0] readAddr2;
  wire [DataWidth-1:0] readData1;
  wire [DataWidth-1:0] readData2;

  reg_file #(DataWidth, NumRegs, IndexWidth)
    uut (
      .clk(clk),
      .rst(rst),
      .writeEn(writeEn),
      .writeAddr(writeAddr),
      .writeData(writeData),
      .readAddr1(readAddr1),
      .readAddr2(readAddr2),
      .readData1(readData1),
      .readData2(readData2)
    );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    writeEn = 0;
    writeAddr = 0;
    writeData = 32'h00000000;
    readAddr1 = 0;
    readAddr2 = 1;

    #10 rst = 0;

    #10 writeEn = 1;  
    #10  writeAddr = 2; 
    #10  writeData = 32'h0A0A; 

    #10 writeEn = 0; 

    #10 readAddr1 = 2; 
    #0  readAddr2 = 1; 


    #10 writeEn = 1;  
    #0  writeAddr = 1; 
    #0  writeData = 32'h0505; 

    #10 writeEn = 0; 

    #10 readAddr1 = 1; 
    #10  readAddr2 = 2; 

    #10 $finish;
  end

endmodule
