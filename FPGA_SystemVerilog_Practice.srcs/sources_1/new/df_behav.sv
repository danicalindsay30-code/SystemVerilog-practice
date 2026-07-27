`timescale 1ns / 1ps

module df_behav(input logic data, set, reset, clk, 
                output logic q , q_bar);
                
        assign q_bar = ~q;
        
        always @ (posedge clk)
        begin 
           if (reset) q <= 0;
           else if (set ) q<= 1; //d flip flop with synchronous set and reset 
           else q <= data;
        end 
               
endmodule
