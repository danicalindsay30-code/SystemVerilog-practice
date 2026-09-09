`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:23:31
// Design Name: 
// Module Name: dff8
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


module dff8( input logic clk,
             input logic  [7:0] d,
             output logic [7:0] q);
       always_ff @(posedge clk)
            for (int i = 0 ; i<8; i++)begin
                 q[i] <= d[i];
            end
                 
     
endmodule
