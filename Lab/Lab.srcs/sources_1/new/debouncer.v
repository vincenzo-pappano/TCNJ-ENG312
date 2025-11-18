module debouncer #(parameter COUNT_MAX = 500_000)
(
    input  wire clk,
    input  wire switch_in,
    output reg  switch_out = 1'b0   // optional default
);

    reg [24:0] counter = 25'd0;     // make sure width fits COUNT_MAX

    always @(posedge clk) begin
        // has the raw switch changed relative to the debounced output?
        if (switch_in != switch_out) begin
            // count how long it stays different
            if (counter >= COUNT_MAX) begin
                switch_out <= switch_in;
                counter    <= 0;
            end else begin
                counter <= counter + 1;
            end
        end else begin
            // stable ? reset counter
            counter <= 0;
        end
    end
endmodule
