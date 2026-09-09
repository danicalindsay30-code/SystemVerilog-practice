`timescale 1ns / 1ps
module top_module (
	input logic clk,
	input logic L,
	input logic r_in,
	input logic q_in,
	output  logic Q);
	
	logic d;
	
	always_ff @(posedge clk)
	    Q <= d;
	    
	always_comb 
	    if(L )begin 
	        d <= r_in;
	    end 
	    else begin
	        d <= q_in; 
	    end 
	       

endmodule
