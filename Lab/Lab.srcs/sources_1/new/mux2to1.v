`timescale 1ns / 1ps
module mux2to1(
    input sel,
    input in0,
    input in1,
    output out
    );
    assign out = in1 & sel | in0 & ~sel;
endmodule
