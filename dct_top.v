`timescale 1ns / 1ps

module dct_top(
	 input [7:0]x0,
	 input [7:0]x1,
	 input [7:0]x2,
	 input [7:0]x3,
	 input [7:0]x4,
	 input [7:0]x5,
	 input [7:0]x6,
	 input [7:0]x7,
	 input en,
	 input clk,
	 output [13:0]y0,
	 output [13:0]y1,
	 output [13:0]y2,
	 output [13:0]y3,
	 output [13:0]y4,
	 output [13:0]y5,
	 output [13:0]y6,
	 output [13:0]y7 
    );

	reg [2:0]addr;
	initial addr = 0;
	
	wire [12:0]w_0[7:0];
	wire [12:0]w_1[7:0];

	//DCT dct1(x0,x1,x2,x3,x4,x5,x6,x7,w_0[0],w_0[1],w_0[2],w_0[3],w_0[4],w_0[5],w_0[6],w_0[7]);
	DCT_app dct1(x0,x1,x2,x3,x4,x5,x6,x7,w_0[0],w_0[1],w_0[2],w_0[3],w_0[4],w_0[5],w_0[6],w_0[7]);
	
	dct_ram dctRAM(w_0[0],w_0[1],w_0[2],w_0[3],w_0[4],w_0[5],w_0[6],w_0[7],clk,en,addr,
						w_1[0],w_1[1],w_1[2],w_1[3],w_1[4],w_1[5],w_1[6],w_1[7]);
	
	//DCT2 dct2(w_1[0],w_1[1],w_1[2],w_1[3],w_1[4],w_1[5],w_1[6],w_1[7],addr,y0,y1,y2,y3,y4,y5,y6,y7);
	DCT2_app dct2(w_1[0],w_1[1],w_1[2],w_1[3],w_1[4],w_1[5],w_1[6],w_1[7],addr,y0,y1,y2,y3,y4,y5,y6,y7);
	always@(posedge clk) addr=addr+1;
	
	
endmodule
