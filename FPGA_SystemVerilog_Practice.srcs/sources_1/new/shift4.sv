`timescale 1ns / 1ps

module shift4( input logic clk,
               input logic areset, //async active-high reset to 0 
               input logic load,
               input logic ena,
               input logic [3:0] data,
               output logic [3:0] q);
      
      always_ff @(posedge clk or posedge areset)
         if (areset) begin
            q <= 4'b0; 
         end
         else if  (load == 1 ) begin 
             q <= data;
         end 
         else if (ena) begin 
            for(int i =1; i<4; i++)begin 
            q[i-1] <= q[i];
            end 
            q[3]= 4'b0; 
         end
  
endmodule
