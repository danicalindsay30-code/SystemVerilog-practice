`timescale 1ns / 1ps


module edge2(input logic clk,
             input logic [7:0] in,
             output logic [7:0] anyedge);
       
       logic [7:0] prev_in ;
       always_ff @(posedge clk)begin 
          prev_in <= in;
          
          for(int i = 0 ; i <8; i++)
             if(prev_in[i] != in[i])
                anyedge[i] <=  1'b1;
             else 
                anyedge[i] <= 1'b0;
       end 
endmodule
