module top91_shift_register_12(
    input wire clk_100mhz,
    input wire btn_raw,
    input wire rotate_or_shift,
    input wire DL,
    input wire rst_n,
    input wire ena,
    input wire load,
    output wire [11:0] Q,
    output wire user_clk_led,
    output wire sys_clk
    );

    wire D0_input;
    
    assign led_D0_input = D0_input;
    
    blinky                           blink_15(clk_100mhz, sys_clk);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    //mux2to1                          mux_rotate(.sel(rotate_or_shift), .in0(1'b0), .in1(Q[11]), .out(D0_input));
    
    reg12_rotate                       reg12_0(.clk(sys_clk), .rst_n(rst_n), .ena(ena), .load(load), .DL(DL), .Q(Q));    

endmodule
