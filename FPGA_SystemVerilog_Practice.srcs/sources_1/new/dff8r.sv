`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:28:46
// Design Name: 
// Module Name: dff8r
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


module dff8r(input logic clk,
             input logic  reset,
             input logic  [7:0] d,
             output logic  [7:0]q );
       //synchronous reset d flip flop
       
       always_ff @(posedge clk)
             if (reset)begin 
                 q <= 8'd0;
                 end 
             else begin 
                 q <= d;
             end
endmodule
