`timescale 1ns / 1ps
//declares test bench module
module OA_tb;

//declares signals used to drive the DUT inputs and observe its outputs 
logic clk_tb,reset_tb, in_valid_tb;
logic out_valid_tb, out_trigger_tb  ;
logic [31:0] in_data_tb;

//istantiates your design under test and connets its ports 
OA dut(.clk(clk_tb), .reset(reset_tb), .in_valid(in_valid_tb),
       .in_data(in_data_tb), .out_trigger(out_trigger_tb),
       .out_valid(out_valid_tb));
 
//generate clk signal   
//generate clk signal once at the start of the simulation     
initial begin
clk_tb = 0;// clk starts low 
forever #10 clk_tb = ~clk_tb;//wait 10 ns to invert the clk 
end 
//one complete clk cycle takes 20ns 
//generate input stimuli 

initial begin
    // Initialise inputs
    reset_tb    = 1'b1;
    in_valid_tb = 1'b0;
    in_data_tb  = 32'b0;

    // Test 1: Assert reset
    repeat (2) @(posedge clk_tb);

    // Test 2: Deassert reset, invalid input
    @(negedge clk_tb);
    reset_tb = 1'b0;
    in_valid_tb = 1'b0;

    @(posedge clk_tb);
    #1;

    // Test 3: Valid input, wrong data
    @(negedge clk_tb);
    in_valid_tb = 1'b1;
    in_data_tb = 32'h12345678;

    @(posedge clk_tb);
    #1;

    // Test 4: Valid input, matching data
    @(negedge clk_tb);
    in_valid_tb = 1'b1;
    in_data_tb = 32'h19024F5D;

    @(posedge clk_tb);
    #1;

    // Test 5: Deassert valid
    @(negedge clk_tb);
    in_valid_tb = 1'b0;

    @(posedge clk_tb);
    #1;

    // Test 6: Assert reset again
    @(negedge clk_tb);
    reset_tb = 1'b1;

    @(posedge clk_tb);
    #1;

    $finish;
end
       
endmodule
