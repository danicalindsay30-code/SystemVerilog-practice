`timescale 1ns / 1ps
// The following module you see before you receives a clock and 
// has a synchronous reset. in_data is 32 bits wide. Every time
 // in_valid is true on the rising edge of the clock out_valid is 
// set true for 1 clock cycle. If in_data = 0x19024F5D when 
// in_valid is true, then out_trigger is true whilst out_valid is
 // true. Otherwise out_trigger is false. The testbench provided 
// validates this is correctly done.
 // You have the ability to view or download the waveform produced
 // by the design. You can also synthesize the design. Be aware 
// this can take a few minutes to run.


module OA (
    input  logic        clk,
    input  logic        reset,
    input  logic [31:0] in_data,
    input  logic        in_valid,
    output logic        out_valid,
    output logic        out_trigger);
    
    always_ff @(posedge clk) begin 
    if (reset) begin 
    out_valid <= '0;
    out_trigger <= '0;
    
    end
    
    end 
endmodule
