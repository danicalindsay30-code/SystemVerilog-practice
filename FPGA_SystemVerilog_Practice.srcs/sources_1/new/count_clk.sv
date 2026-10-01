module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 

endmodule

//count bcd module for ones and tens only 

module bcd_count(input logic clk,
                 input logic reset,
                 input logic ena,
                 output logic [7:0] Q);
      
       //internal wires
       logic [3:0] q_ones, q_tens;
       logic [1:0] enable;
                 
       always_comb begin 
       enable[0] = ena;
       enable[1] = ena && (q_ones == 4'd9);
   
       end 
       
       
       //istantiate the counters 
       count10 ones_count (clk, reset, enable[0], q_ones);
       count10 tens_count (clk, reset, enable[1], q_tens);
       
       assign Q = {q_tens, q_ones};
                 
      
endmodule

module count10 (input logic clk,
                input logic reset,
                input logic enable,
                output logic [3:0]count);
                
       always_ff @(posedge clk) begin
          if (reset) begin
             count <= '0;
          end 
          else if (enable==0) begin 
             count <= count;   
          end 
          else if (count == 4'd9)begin 
              count <= '0;
          end 
          else begin
             count <= count + 1'b1;
          end 
       
       end 
                
endmodule 