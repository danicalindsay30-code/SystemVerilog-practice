module top_module ( input clk, input d, output q );
    //internal wires 
    logic q_1,q_2;
    
    my_dff dut(.clk(clk),.d(d),.q(q_1));
    my_dff dut1(.clk(clk),.d(q_1),.q(q_2));
    my_dff dut2(.clk(clk),.d(q_2),.q(q));
    

endmodule