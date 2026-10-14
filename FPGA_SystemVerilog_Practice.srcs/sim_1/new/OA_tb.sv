`timescale 1ns / 1ps

module OA_tb;

logic clk_tb,reset_tb, in_valid_tb;
logic out_valid_tb, out_trigger_tb  ;
logic [31:0] in_data_tb;


OA dut(.clk(clk_tb), .reset(reset_tb), .in_valid(in_valid_tb),
       .in_data(in_data_tb), .out_trigger(out_trigger_tb),
       .out_valid(out_valid(tb)));
 
//generate clk signal       
initial begin
clk_tb = 0;
forever #10 clk_tb = ~clk_tb;
end 

//generate input stimuli 

initial begin
#10 in_valid_tb = 1'b1;
#10 in_data_tb = 32'h19024F5D;
#10 in_valid_tb = 1'b0;
#10 reset_tb = 1'b1 ;



end
       
endmodule
