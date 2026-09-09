`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 12:19:11
// Design Name: 
// Module Name: dff8ar
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

//8 d flip flops with active high asynchronous reset
//asynchronous reset means that if reset is asserted the values should be reset immedeatrly 
//dont have to wait till positive edge of clock cycle 
module dff8ar(input logic clk, areset,
              input logic [7:0] d,
              output logic [7:0] q

    );
    
    always_ff @(posedge clk or posedge areset)
    if (areset)begin 
    q <= 8'b0;
    end 
    else begin 
    q <= d;
    end
endmodule
