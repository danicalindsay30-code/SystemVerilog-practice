`timescale 1ns / 1ps

module counter1_12 (
    input  logic clk,
    input  logic reset,
    input  logic enable,
    output logic [3:0] Q,
    output logic c_enable,
    output logic c_load,
    output logic [3:0] c_d
);

    always_comb begin
        // Default values
        c_enable = enable;
        c_load   = 1'b0;
        c_d      = 4'b0001;

        // Reset or reaching 12: load 1
        if (reset) begin
            c_load = 1'b1;
        end
        else if (enable && Q == 4'b1100) begin
            c_load = 1'b1;
        end
    end

    count4 the_counter (
        .clk(clk),
        .enable(c_enable),
        .load(c_load),
        .d(c_d),
        .Q(Q)
    );

endmodule