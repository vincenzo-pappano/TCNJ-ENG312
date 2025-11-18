module top04_reg8(
    input wire clk_100mhz,
    input wire btn_raw,
    input wire [7:0] D,
    input wire [7:0] DL,
    input wire rst_n,
    input wire ena,
    input wire load,
    output wire [7:0] Q,
    output wire led,
    output wire user_clk_led, 
    output wire user_clk
    );

   
    blinky                           blink_15(clk_100mhz, led);
    
    debouncer #(.COUNT_MAX(250000))  debounce(clk_100mhz, btn_raw, user_clk_led);
    BUFG                             u_bufg_manual (.I(user_clk_led), .O(user_clk)); //usr_clk to be used as a clock signal
    
    reg8                             reg8_0(.clk(user_clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D), .DL(DL), .Q(Q));    

endmodule
