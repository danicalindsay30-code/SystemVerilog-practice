`timescale 1ns / 1ps

module module_a(input logic clk,
                input logic rst,
                output logic [7:0] count);
                
      always_ff @(posedge clk)
         if (rst) begin
            count <= '0;
         end 
         else if(count == 10)begin 
         count<= count;
         end 
         else begin 
            count <= count + 1'b1;
         end 
endmodule