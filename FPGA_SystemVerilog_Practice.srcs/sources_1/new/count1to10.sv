`timescale 1ns / 1ps


module count1to10(input logic clk,
                  input logic reset, 
                  output logic [3:0] q);
                  
       always_ff @(posedge clk)
           if (reset)begin 
              q <= 4'b1; 
           end  
           else if (q == 10)begin
              q <= 4'b1; 
           end
           else begin
               q <= q + 1'b1;
            end  
endmodule
