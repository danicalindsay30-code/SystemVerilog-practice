`timescale 1ns / 1ps

module exam_count(input logic clk,
                  input logic reset,
                  input logic enable,
                  output logic [3:0] Q,
                  output logic c_enable,
                  output logic c_load,
                  output logic [3:0] c_d);
       
        count4 dut(.clk(clk),.enable(c_enable),.Q(Q),
                   .load(c_load),.d(c_d));
        if (reset) begin
            c_load = 1'b1;
        end
        else if (enable) begin 
        
        
        end 
                   
endmodule
