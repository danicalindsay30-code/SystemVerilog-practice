`timescale 1ns / 1ps

module shift_circuit_tb;

logic load, clk, s_in, s_out;
logic [7:0] d;
logic [7:0] q;

// Device Under Test
shift_circuit dut(
    .load(load),
    .clk(clk),
    .s_in(s_in),
    .d(d),
    .q(q),
    .s_out(s_out)
);

// Clock generation
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

// Test sequence
initial begin

    // Initial values
    load = 0;
    s_in = 0;
    d    = 8'b00000000;

    // Wait a little
    #5;

    // -------------------------
    // Test 1 : Parallel Load
    // -------------------------
    load = 1;
    d = 8'b10110010;

    // Wait for one clock edge
    #20;

    // -------------------------
    // Test 2 : Shift in a 1
    // -------------------------
    load = 0;
    s_in = 1;

    #20;

    // -------------------------
    // Test 3 : Shift another 1
    // -------------------------
    #20;

    // -------------------------
    // Test 4 : Shift in a 0
    // -------------------------
    s_in = 0;

    #20;

    // -------------------------
    // Test 5 : Load new data
    // -------------------------
    load = 1;
    d = 8'b01010101;

    #20;

    $finish;

end

// Display values after each rising edge
initial begin
    $monitor("Time=%0t load=%b s_in=%b d=%b q=%b s_out=%b",
              $time, load, s_in, d, q, s_out);
end

endmodule