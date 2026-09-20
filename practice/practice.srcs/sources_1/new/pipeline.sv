`timescale 1ns / 1ps


module pipeline(input logic clk, rst,
                input logic signed [7:0] a,
                input logic signed [7:0]b,
                input logic signed [7:0]c,
                output logic signed [15:0]y);
       //internal wires 
       logic signed [15:0] product_reg;
       logic signed [7:0] c_reg;
       
       always_ff @(posedge clk )begin 
          if (rst) begin 
             product_reg <= '0;
             c_reg <= '0;
             y <= '0;
       end
       
       else begin 
         product_reg <= a*b;
         c_reg <= c;
         y <= product_reg + c_reg;
         end
         end
 endmodule
