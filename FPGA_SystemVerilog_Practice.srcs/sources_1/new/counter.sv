`timescale 1ns / 1ps


module counter(input logic rst, clk,
              output logic [7:0] sum);
              
       logic [7:0] sum_p ;
       
       assign sum_p = sum + 8'b1;
       
       //d flip flop
       always_ff @(posedge clk or posedge rst)
                 if (rst) sum <=  8'b0;
                 else sum <= sum_p ; 
                 
endmodule
