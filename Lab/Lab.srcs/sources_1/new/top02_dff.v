module top02_dff(
    input clk_100mhz,
    input btn_raw,
    input D,
    input rst_n,
    output Q,
    output led,
    output user_clk_led, 
    output user_clk
    );

   
    blinky                           blink_15(clk_100mhz, led);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    dff                              dff0(.D(D), .Q(Q), .rst_n(rst_n), .clk(user_clk));
    
endmodule
