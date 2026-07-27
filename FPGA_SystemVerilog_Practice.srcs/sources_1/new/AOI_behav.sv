`timescale 1ns / 1ps

module AOI_behav( input [4:0] x,
                  output y_out);
                 
      assign y_out = ~((x[0] & x[1]) | (x[2] & x[3] & x[4]));
       
endmodule
