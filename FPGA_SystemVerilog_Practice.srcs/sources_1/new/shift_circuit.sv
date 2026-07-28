`timescale 1ns / 1ps
//describe functionality of circuit:
// parallel load shift has two modes depending on the load variable 
// the circuit either acts as a shifting module or a paralel load 

module shift_circuit(input logic load, clk, s_in,
                     input logic [7:0] d, 
                     output logic [7:0] q,
                     output logic s_out);
        
        always_ff @(posedge clk)begin 
        if (load)
            q<=d;
        else begin
             q[7] <= q[6];
             q[6] <= q[5];
             q[5] <= q[4];
             q[4] <= q[3];
             q[3] <= q[2];
             q[2] <= q[1];
             q[1] <= q[0];
             q[0] <= s_in;
             end 
        end 
        assign s_out = q[7];
endmodule
