`timescale 1ns / 1ps


module fsm_1(input logic clk,reset, in_1,
             output logic q);
             
        //create the type and state the differet types using enum 
        enum {s0, s1, s2} present_state, next_state;
        
        //state register- sequential logic 
        always_ff @(posedge clk or posedge reset)
                 if (reset) present_state <= s0;
                 else present_state <= next_state;
                 
        //combinational logic - sgtate transitions
        always_comb 
             case(present_state)
                 s0: next_state = s1;
                 s1: next_state = s2;
                 s2: if (in_1 == 1) next_state = s0;
                     else next_state = s1; 
             endcase
        //set output 
        assign q = (present_state == s0);
        
        
endmodule
