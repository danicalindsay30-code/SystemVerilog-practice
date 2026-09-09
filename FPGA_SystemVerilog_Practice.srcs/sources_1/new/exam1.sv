`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 12:50:34
// Design Name: 
// Module Name: exam1
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


module exam1(input logic clk,
             input logic in,
             input logic out

    );
    
    logic d;
    
    assign d = in ^ out;
    
    always_ff @(posedge clk )
       out <= d;
       
endmodule
