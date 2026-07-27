`timescale 1ns / 1ps

//structural implentation 

// gate primitives drive net wires 
module sr_latch( output  Q, Q_not,
                 input   S, R);
nor(Q, Q_not, R);
nor (Q_not, S, Q);

endmodule
