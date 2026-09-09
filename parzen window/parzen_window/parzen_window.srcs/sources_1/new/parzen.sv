`timescale 1ns / 1ps

module parzen #(parameter WINDOW_SIZE_POW2 = 10,//N
                parameter COEFF_FRAC_BITS = 16,
                parameter COEFF_INT_BITS = WINDOW_SIZE_POW2,
                parameter COEFF_BITS = COEFF_FRAC_BITS + COEFF_INT_BITS)
                (input clk,
                 input rst,
                 output [COEFF_BITS-1:0]window_out,
                 output window_out_valid);
                 output window_out_valid);
                 
       //sizes when multiplying: sizes add
       localparam B_INT_BITS = COEFF_INT_BITS;
       localparam B2_INT_BITS = B_INT_BITS + B_INT_BITS;
       localparam B3_INT_BITS = B2_INT_BITS + B_INT_BITS;
       
       //when multiplying: fractionals follow the same rule
       localparam B_FRAC_BITS = COEFF_FRAC_BITS;
       localparam B2_FRAC_BITS = B_FRAC_BITS + B_FRAC_BITS;
       localparam B3_FRAC_BITS = B2_FRAC_BITS + B_FRAC_BITS;
       
       //count down from window size 
       logic [WINDOW_SIZE_POW2-1:0] window_counter;
       logic                        window_counter_valid;
       logic                        window_counting_down; 
endmodule
