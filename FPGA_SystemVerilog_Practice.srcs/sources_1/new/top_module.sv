`timescale 1ns / 1ps


module top_module(input logic clk,
                  input logic rst,
                  output logic reached);
        //internal 
        logic [7:0] count;
        
        //istantiate the internal modules 
        module_a counter_instance(.clk(clk),.rst(rst),.count(count));
        module_b comparator_instance(.count(count),.reached(reached));
        
  
        
endmodule
