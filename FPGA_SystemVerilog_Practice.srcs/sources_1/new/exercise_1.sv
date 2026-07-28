`timescale 1ns / 1ps


module exercise_1(input logic clk, a_p, b_p, c_p,
                  output logic f);
       //internal wires 
       logic a, b,c,d_p,e_p,d,e,f_p;
       
       //continous assignments for combiational logic 
       
       assign d_p = a & b ;
       assign e_p = ~b & c ;
       assign f_p = d | e ;
       
       
       always_ff @(posedge clk)
       begin
       a <= a_p;
       b <= b_p;
       c <= c_p;
       d <= d_p;
       e <= e_p;
       f <= f_p;
       end 
endmodule
