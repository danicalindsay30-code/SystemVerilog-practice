`timescale 1ns / 1ps


module vector3_tb;

    // Input signals
    logic [4:0] a_p, b_p, c_p, d_p, e_p, f_p;

    // Output signals
    logic [7:0] w_p, x_p, y_p, z_p;

    // DUT instantiation
    vector3 dut (
        .a(a_p),
        .b(b_p),
        .c(c_p),
        .d(d_p),
        .e(e_p),
        .f(f_p),
        .w(w_p),
        .x(x_p),
        .y(y_p),
        .z(z_p)
    );

    // Test stimulus
    initial begin

        // Test case 1
        a_p = 5'b00101;
        b_p = 5'b00000;
        c_p = 5'b11111;
        d_p = 5'b01010;
        e_p = 5'b10101;
        f_p = 5'b11000;

        #10;

        // Test case 2
        a_p = 5'b11111;
        b_p = 5'b11111;
        c_p = 5'b11111;
        d_p = 5'b11111;
        e_p = 5'b11111;
        f_p = 5'b11111;

        #10;

        $finish;
end

initial begin 
$monitor("%b,%b,%b,%b",w_p,x_p,y_p,z_p);
end 
endmodule