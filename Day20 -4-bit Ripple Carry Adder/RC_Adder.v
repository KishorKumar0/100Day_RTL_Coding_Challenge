`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kishor Kumar
// 
// Create Date: 11.12.2023 19:24:56
// Design Name: 4-bit Ripple Carry Adder
// Module Name: RC_adder
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

//Declare the ports of Half adder module
module half_adder(
    Data_in_A,
    Data_in_B,
    Data_out_Sum,
    Data_out_Carry
    );

    input Data_in_A;
    input Data_in_B;
    output Data_out_Sum;
    output Data_out_Carry;
     
     assign Data_out_Sum = Data_in_A ^ Data_in_B; 
     assign Data_out_Carry = Data_in_A & Data_in_B; 
    
endmodule


//declare the Full adder module.
module full_adder(
    Data_in_A,  //input A
    Data_in_B,  //input B
    Data_in_C,  //input C
     Data_out_Sum,
     Data_out_Carry
    );

    input Data_in_A;
    input Data_in_B;
     input Data_in_C;
     output Data_out_Sum;
     output Data_out_Carry;

     wire ha1_sum;
     wire ha2_sum;
     wire ha1_carry;
     wire ha2_carry;
     wire Data_out_Sum;
     wire Data_out_Carry;

    half_adder  ha1(
        .Data_in_A(Data_in_A),
        .Data_in_B(Data_in_B),
        .Data_out_Sum(ha1_sum),
        .Data_out_Carry(ha1_carry)
    );
    
    half_adder  ha2(
        .Data_in_A(Data_in_C),
        .Data_in_B(ha1_sum),
        .Data_out_Sum(ha2_sum),
        .Data_out_Carry(ha2_carry)
    );

    assign Data_out_Sum = ha2_sum;  
    assign Data_out_Carry = ha1_carry | ha2_carry;
    
endmodule



module RC_adder(
    A,
    B,
    C_in,
    Sum_out,
    C_out);

    input [3:0] A;  
    input [3:0] B;
    input C_in;
    output [3:0] Sum_out;
    output C_out;
    
    wire [3:0] Sum;
    wire [3:0] Carry;
    wire [3:0] Sum_out; 
    wire C_out;
    
    
   full_adder fa1(
    .Data_in_A  (A[0]), 
    .Data_in_B  (B[0]), 
    .Data_in_C  (C_in),  
     .Data_out_Sum  (Sum[0]),
     .Data_out_Carry (Carry[0])
    );

     full_adder fa2(
    .Data_in_A  (A[1]), 
    .Data_in_B  (B[1]), 
    .Data_in_C  (Carry[0]),  
     .Data_out_Sum  (Sum[1]),
     .Data_out_Carry (Carry[1])
    );

     full_adder fa3(
    .Data_in_A  (A[2]), 
    .Data_in_B  (B[2]), 
    .Data_in_C  (Carry[1]),  
     .Data_out_Sum  (Sum[2]),
     .Data_out_Carry (Carry[2])
    );

     full_adder fa4(
    .Data_in_A  (A[3]), 
    .Data_in_B  (B[3]), 
    .Data_in_C  (Carry[2]),  
     .Data_out_Sum  (Sum[3]),
     .Data_out_Carry (Carry[3])
    );
     
     assign Sum_out = Sum;
     assign C_out = Carry[3];
     
endmodule


