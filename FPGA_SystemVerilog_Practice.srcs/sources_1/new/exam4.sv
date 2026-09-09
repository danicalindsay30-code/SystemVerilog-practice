`timescale 1ns / 1ps


module exam4( input logic clk, x,
              output logic z);
              
       //internal
       logic [2:0]d,q;
       
       always_ff @(posedge clk )begin 
           q <= d;
       end
       

          assign d[0] = x ^ q[0];
          assign d[1] = x & ~q[1];
          assign d[2] = x | ~dq[2]; 
          
          //output logic 
          nor(z, q[0],q[1],q[2]);
       

endmodule
