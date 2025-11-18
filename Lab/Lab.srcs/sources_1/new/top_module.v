module top_module(
    input clk_100mhz,
    input btn_raw,
    output led,
    output user_clk_led, 
    output user_clk
    );

   
    blinky                           blink_15(clk_100mhz, led);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    
endmodule