module top90_shift_register(
    input wire clk_100mhz,
    input wire btn_raw,
    input wire rotate_input,
    input wire [7:0] DL,
    input wire rst_n,
    input wire ena,
    input wire load,
    output wire [7:0] Q,
    output wire led,
    output wire user_clk_led, 
    output wire user_clk
    );

    wire D0_input;
    wire led_rotate_input;
    wire led_D0_input;
    
    assign led_D0_input = D0_input;
    assign led_rotate = rotate_input;
    
    blinky                           blink_15(clk_100mhz, led);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    mux2to1                          mux_rotate(.sel(rotate_input), .in0(1'b0), .in1(Q[7]), .out(D0_input));
    
    reg8_shift                       reg8_0(.clk(user_clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D0_input), .DL(DL), .Q(Q));    

endmodule
