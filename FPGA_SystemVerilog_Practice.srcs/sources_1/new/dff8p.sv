`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 12:13:53
// Design Name: 
// Module Name: dff8p
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


module dff8p( input logic clk, reset,
              input logic [7:0]d,
              output logic [7:0] q

    );
    
    always_ff @(negedge clk)
        if(reset) begin 
            q <= 8'h34;
            end
        else begin 
            q <= d;
            end
endmodule
