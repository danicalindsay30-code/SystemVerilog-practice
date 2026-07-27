`timescale 1ns / 1ps

module d_latch_tb;

logic t_clk;
logic t_d;
logic t_q;
logic t_q_not;

d_latch_behav dut(
    .clk(t_clk),
    .d(t_d),
    .q(t_q),
    .q_not(t_q_not)
);

// Stimulus
initial begin

    // Initial values
    t_clk = 0;
    t_d   = 0;

    #10;

    // Open the latch - q should become 0
    t_clk = 1;
    #10;

    // Change d while latch is open - q should follow
    t_d = 1;
    #10;

    // Change d again while latch is open
    t_d = 0;
    #10;

    // Close the latch
    t_clk = 0;
    #10;

    // Change d while latch is closed
    // q should NOT change
    t_d = 1;
    #10;

    t_d = 0;
    #10;

    // Open the latch again
    t_clk = 1;
    #10;

    // q should now update to match d
    t_d = 1;
    #10;

    $finish;

end

// Monitor
initial begin
    $monitor("Time=%0t clk=%b d=%b q=%b q_not=%b",
             $time, t_clk, t_d, t_q, t_q_not);
end

endmodule