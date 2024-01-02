`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 02.01.2024 01:44:00
// Design Name: Moore State Machine
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


module moore(clk, inbit, reset, detect);

    input clk;
    input reset;
    input inbit;
    output reg detect;
    
    reg [3:0]state;
    
    initial begin
        state <=2'b00;
    end 
    always @(posedge clk, posedge reset)
    begin
    if(reset)
    state <= 2'b00;
    else
    begin
        case(state)
        2'b00:
        begin
            if(inbit) state <= 2'b01;
            else      state <= 2'b10;
        end
        2'b01:
        begin
            if(inbit) state <= 2'b11;
            else      state <= 2'b10;
        end
        2'b10:
        begin
            if(inbit) state <= 2'b01;
            else      state <= 2'b11;
       end
       2'b11:
       begin
            if(inbit) state <= 2'b01;
            else      state <= 2'b10;
       end
       endcase
    end
    end
    
    always @(posedge clk, posedge reset)
    begin
        if(reset)
            detect <= 0;
        else if(state == 2'b11)
            detect <= 1;
        else detect <= 0;
    end
     
endmodule
