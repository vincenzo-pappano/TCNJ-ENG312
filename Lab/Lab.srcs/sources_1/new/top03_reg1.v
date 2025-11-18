module top03_reg1(
    input clk_100mhz,
    input btn_raw,
    input D,
    input DL,
    input rst_n,
    input ena,
    input load,
    output Q,
    output led,
    output user_clk_led, 
    output user_clk
    );

   
    blinky                           blink_15(clk_100mhz, led);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    reg1                             reg1_0(.clk(user_clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D), .DL(DL), .Q(Q));    

endmodule
