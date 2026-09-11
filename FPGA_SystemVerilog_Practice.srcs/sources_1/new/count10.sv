`timescale 1ns / 1ps

module count10( input logic clk,
                input logic reset,
                output logic [3:0] q );
       
       always_ff @(posedge clk)
       if(reset)begin 
          q <= 4'b0;
       end
       else if (q == 9 )begin 
           q <= 4'b0;
       end
       else begin
           q<= q + 1'b1; 
       end
   
endmodule
