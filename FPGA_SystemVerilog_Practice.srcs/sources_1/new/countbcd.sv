module top_module (
    input  logic clk,
    input  logic reset,
    output logic [3:1] ena,
    output logic [15:0] q
);

    // Internal counter outputs
    logic [3:0] Q_0, Q_1, Q_2, Q_3;
    logic enable;

    // Combinational enable logic
    always_comb begin
        enable = 1'b1;

        ena[1] = (Q_0 == 4'd9);

        ena[2] = (Q_0 == 4'd9) &&
                 (Q_1 == 4'd9);

        ena[3] = (Q_0 == 4'd9) &&
                 (Q_1 == 4'd9) &&
                 (Q_2 == 4'd9);
    end

    // Instantiate the four BCD counters
    count10 ones_count (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .q(Q_0)
    );

    count10 tens_count (
        .clk(clk),
        .reset(reset),
        .enable(ena[1]),
        .q(Q_1)
    );

    count10 hundreds_count (
        .clk(clk),
        .reset(reset),
        .enable(ena[2]),
        .q(Q_2)
    );

    count10 thousands_count (
        .clk(clk),
        .reset(reset),
        .enable(ena[3]),
        .q(Q_3)
    );

    // Combine the four BCD digits into a 16-bit output
    assign q = {Q_3, Q_2, Q_1, Q_0};

endmodule