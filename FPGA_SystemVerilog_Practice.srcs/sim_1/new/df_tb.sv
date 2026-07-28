`timescale 1ns / 1ps

module df_tb;

logic t_data, t_set, t_reset, t_clk;
logic t_q, t_q_bar;

// Instantiate DUT
df_behav dut(
    .data(t_data),
    .set(t_set),
    .reset(t_reset),
    .clk(t_clk),
    .q(t_q),
    .q_bar(t_q_bar)
);

// Generate clock
initial begin
    t_clk = 0;
    forever #10 t_clk = ~t_clk;
end

// Stimulus
initial begin

    // Initial values
    t_data  = 0;
    t_set   = 0;
    t_reset = 0;

    // Test normal D flip-flop
    #20;
    t_data = 1;

    #20;
    t_data = 0;


    // Test synchronous set
    #20;
    t_set = 1;

    #20;
    t_set = 0;

    // Test synchronous reset
    #20;
    t_reset = 1;

    #20;
    t_reset = 0;
    // Test priority
    // reset should override set
    #20;
    t_set = 1;
    t_reset = 1;

    #20;
    t_set = 0;
    t_reset = 0;

    // Finish simulation
    #20;
    $finish;

end

endmodule