`timescale 1ns / 1ps

module df_behav(input logic data, set, reset, clk, 
                output logic q , q_bar);
                
        assign q_bar = ~q;
        //assign is a continous assignment , ensuring whenever q changes  
        //  q_bar automatically updates to opposite value
        
              
        always @(posedge clk)
        //declares a cyclic behaviour corresponding to an edge 
        //triggered flip flop 
        if (reset) q <= 0;
        //reset has highest priority so if set nothing else is checkes 
        else if(set) q <= 1;
        else q<= data;
        //loads the current value of data 
        //<= is a non blocking assignment 
        //non-blocking assignmentused in sequential clocked logic
        //update all registers simutaneously at the end of the current time step 
        //each register uses the value that existed before the clock edge 
endmodule
