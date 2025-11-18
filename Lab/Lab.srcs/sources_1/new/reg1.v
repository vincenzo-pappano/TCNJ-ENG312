module reg1 (
    input  wire clk,
    input  wire rst_n,
    input  wire ena, 
    input  wire load,
    input  wire D,
    input  wire DL,
    output wire Q
);

    wire mux_load_out;
    wire mux_ena_out;
    
    mux2to1  mux_ena(.sel(ena), .in0(D), .in1(Q), .out(mux_ena_out));
    mux2to1  mux_load(.sel(load), .in0(mux_ena_out), .in1(DL), .out(mux_load_out));
    dff      dff0(.clk(clk), .rst_n(rst_n), .D(mux_load_out), .Q(Q));
    
endmodule
