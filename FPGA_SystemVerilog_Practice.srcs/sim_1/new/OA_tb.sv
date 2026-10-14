`timescale 1ns / 1ps

module OA_tb;

logic clk_tb,reset_tb, in_valid_tb;
logic out_valid_tb, out_trigger_tb  ;
logic [31:0] in_data_tb;


OA dut(.clk(clk_tb), .reset(reset_tb), .in_valid(in_valid_tb),
       .in_data(in_data_tb), .out_trigger(out_trigger_tb),
       .out_valid(out_valid(tb)));
       
initial begin
end 
       
endmodule
