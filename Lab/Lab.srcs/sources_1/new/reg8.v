module reg8 (
    input  wire clk,
    input  wire rst_n,
    input  wire ena, 
    input  wire load,
    input  wire [7:0] D,
    input  wire [7:0] DL,
    output wire [7:0] Q
);

    reg1   reg1_0(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[0]), .DL(DL[0]), .Q(Q[0]));    
    reg1   reg1_1(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[1]), .DL(DL[1]), .Q(Q[1]));    
    reg1   reg1_2(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[2]), .DL(DL[2]), .Q(Q[2]));    
    reg1   reg1_3(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[3]), .DL(DL[3]), .Q(Q[3]));    
    reg1   reg1_4(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[4]), .DL(DL[4]), .Q(Q[4]));    
    reg1   reg1_5(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[5]), .DL(DL[5]), .Q(Q[5]));    
    reg1   reg1_6(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[6]), .DL(DL[6]), .Q(Q[6]));    
    reg1   reg1_7(.clk(clk), .rst_n(rst_n), .ena(ena), .load(load), .D(D[7]), .DL(DL[7]), .Q(Q[7]));    


endmodule

