`timescale 1ns / 1ps

module module_b(input logic [7:0] count,
                output logic reached);
                
     always_comb begin
          if (count == 10) begin
             reached = 1'b1; 
          end 
          else begin 
             reached = 1'b0;
          end 
      end 
          
endmodule 
