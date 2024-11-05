`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 02:32:47 PM
// Design Name: 
// Module Name: Adder
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


module Adder
    #( parameter N = 4)
    (
    input logic [N - 1: 0] X, Y,
    input logic C_in,
    output logic C_out,
    output logic [N - 1: 0] S,
    output logic overflow
    );
    
    assign {C_out,S} = X + Y + C_in;
    assign overflow = (X[N-1] & Y[N-1] & ~S[N-1]) | (~X[N-1] & ~Y[N-1] & S[N-1]);
endmodule
