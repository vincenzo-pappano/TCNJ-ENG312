// Takes a single DL input to load a '1' into the LSB
module reg12_rotate (
    input  wire clk,
    input  wire rst_n,
    input  wire ena, 
    input  wire load,
    input  wire DL,
    output wire [11:0] Q
);

    reg1   reg1_0(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[11]), .DL(DL),   .Q(Q[0]));    
    reg1   reg1_1(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[0]),  .DL(1'b0), .Q(Q[1]));    
    reg1   reg1_2(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[1]),  .DL(1'b0), .Q(Q[2]));    
    reg1   reg1_3(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[2]),  .DL(1'b0), .Q(Q[3]));    
    reg1   reg1_4(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[3]),  .DL(1'b0), .Q(Q[4]));    
    reg1   reg1_5(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[4]),  .DL(1'b0), .Q(Q[5]));    
    reg1   reg1_6(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[5]),  .DL(1'b0), .Q(Q[6]));
    reg1   reg1_7(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[6]),  .DL(1'b0), .Q(Q[7]));
    reg1   reg1_8(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[7]),  .DL(1'b0), .Q(Q[8]));
    reg1   reg1_9(.clk(clk),  .rst_n(rst_n), .ena(ena), .load(load), .D(Q[8]),  .DL(1'b0), .Q(Q[9]));
    reg1   reg1_10(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(Q[9]),  .DL(1'b0), .Q(Q[10]));
    reg1   reg1_11(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(Q[10]), .DL(1'b0), .Q(Q[11]));
endmodule

