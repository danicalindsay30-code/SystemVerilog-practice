`timescale 1ns / 1ps

module sr_latch_tb;

logic  t_S, t_R,t_Q, t_Q_not;

sr_latch dut(.S(t_S), 
             .R(t_R),
             .Q(t_Q), 
             .Q_not(t_Q_not));
             
initial begin 
   t_S = 0; 
   t_R =0; 
   #20;
   t_R = 1; 
   #20;
   t_R =0; 
   t_S = 1;
   #20;
   t_R = 1; 
   #20; 

end

endmodule
