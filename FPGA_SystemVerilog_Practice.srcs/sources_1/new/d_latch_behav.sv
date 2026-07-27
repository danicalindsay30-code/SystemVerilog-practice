`timescale 1ns / 1ps

module d_latch_behav(input logic  clk, d,
                     output logic  q, q_not);
                     
       always_latch begin 
       if (clk)
           q = d;
       end 
       
       assign q_not = ~ q;
                            
endmodule
