module dff (
    input  wire clk,
    input  wire rst_n,
    input  wire D,
    output reg  Q
);
    always @(posedge clk or negedge rst_n) begin
        if (rst_n)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule