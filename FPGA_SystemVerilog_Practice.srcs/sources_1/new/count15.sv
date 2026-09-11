`timescale 1ns / 1ps

module count15(input logic clk,
               input logic reset,//synchronous active high reset
               output logic [3:0] q);
       
               
       always_ff @(posedge clk)begin 
          if (reset) begin 
          q <= 4'b0;
          end 
          else begin 
          q <= q + 1'b1;
          end 
       
       end
endmodule
