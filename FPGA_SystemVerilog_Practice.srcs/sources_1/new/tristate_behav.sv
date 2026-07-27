`timescale 1ns / 1ps

module tristate_behav(input logic in0,in1,enable0,enable1,
                      output wire out);
       // out is defined as a wire due to multiple devices driving the wire
       
       assign out = (enable0) ? in0 : 1'hz;
       assign out = (enable1) ? in1 : 1'hz;
       
endmodule
