`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 12:29:32
// Design Name: 
// Module Name: dff16e
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


module dff16e(input logic clk,
              input logic resetn,
              input logic [1:0] byteena,
              input logic [15:0] d,
              output logic [15:0]q );
       always_ff @(posedge clk)
           if (~resetn) begin 
               q <= 16'd0;
               end
           else begin 
           case (byteena)
                2'b01 : q[7:0] <= d[7:0];
                2'b10 : q[15:8] <= d[15:8];
                2'b11 : q <= d;
                endcase 
                end
      
      endmodule
