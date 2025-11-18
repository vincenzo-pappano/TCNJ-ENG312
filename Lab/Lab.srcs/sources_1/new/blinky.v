module blinky(
    input clk_100mhz,
    output led
    );
    reg [24:0] count = 0;
    assign led = count[24];
    always @ (posedge(clk_100mhz)) count <= count + 1;
endmodule