`timescale 1ns / 1ps

module nonpipeline(input logic signed [7:0] a,
                   input logic signed [7:0]b,
                   input logic signed [7:0]c,
                   output logic signed [15:0]y

    );
    
    logic signed [15:0] product;
    
    always_comb begin
       product = a *b ;
       y = product + c;
       
    end
endmodule
