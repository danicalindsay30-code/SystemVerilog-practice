module uart_tx #(
    parameter int CLK_FREQ  = 50_000_000,
    parameter int BAUD_RATE = 115_200
) (
    input  logic       clk,
    input  logic       reset,
    input  logic       tx_start,
    input  logic [7:0] tx_data,

    output logic       tx,
    output logic       busy,
    output logic       tx_done
);

    // Calculate the number of clock cycles per UART bit
    localparam int CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    // Number of bits required to represent the counter
    localparam int TIMER_WIDTH =
        (CLKS_PER_BIT > 1) ? $clog2(CLKS_PER_BIT) : 1;

    typedef enum logic [1:0] {
        IDLE,
        START_BIT,
        DATA_BITS,
        STOP_BIT
    } state_t;
tate_t state;

    logic [7:0] data_reg;
    logic [2:0] bit_index;
    logic [TIMER_WIDTH-1:0] clock_count;

    always_ff @(posedge clk) begin
        if (reset) begin
            state       <= IDLE;
            data_reg    <= 8'b0;
            bit_index   <= 3'b0;
            clock_count <= '0;
            tx          <= 1'b1;
            busy        <= 1'b0;
            tx_done     <= 1'b0;
        end else begin
