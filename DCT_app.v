`timescale 1ns / 1ps

module DCT_app(
	 input [7:0]x0,
	 input [7:0]x1,
	 input [7:0]x2,
	 input [7:0]x3,
	 input [7:0]x4,
	 input [7:0]x5,
	 input [7:0]x6,
	 input [7:0]x7,
	 output signed [12:0]y0,
	 output signed [12:0]y1,
	 output signed [12:0]y2,
	 output signed [12:0]y3,
	 output signed [12:0]y4,
	 output signed [12:0]y5, 
	 output signed [12:0]y6,
	 output signed [12:0]y7
    );
	
	/* Internal connections */	
	wire signed [12:0]w1[7:0];
	wire signed [12:0]w2[7:0];
	wire signed [12:0]w3[7:0];

	
	/**************************** Computation ****************************/
apads44   add1({5'd0,x7},{5'd0,x0},1'b0,w1[0],);
apads44   add2({5'd0,x6},{5'd0,x1},1'b0,w1[1],);
apads44   add3({5'd0,x5},{5'd0,x2},1'b0,w1[2],);
apads44   add4({5'd0,x4},{5'd0,x3},1'b0,w1[3],);
apads44   add5({5'd0,x3},{5'd0,x4},1'b1,w1[4],);
apads44   add6({5'd0,x2},{5'd0,x5},1'b1,w1[5],);
apads44   add7({5'd0,x1},{5'd0,x6},1'b1,w1[6],);
apads44   add8({5'd0,x0},{5'd0,x7},1'b1,w1[7],);
apads44   add9( w1[0],w1[3],1'b0,w2[0],);
apads44   add10(w1[1],w1[2],1'b0,w2[1],);
apads44   add11(w1[1],w1[2],1'b1,w2[2],);
apads44   add12(w1[0],w1[3],1'b1,w2[3],);
 assign w2[4] = w1[4];
 assign w2[5] = w1[5];
apads44   add13(w1[6],w1[7],1'b0,w2[6],);
apads44   add14(w1[6],w1[7],1'b1,w2[7],);
apads44   add15(w2[0],w2[1],1'b0,w3[0],);
apads44	add16(w2[0],w2[1],1'b1,w3[1],);


	
	
	
	assign w3[2] = w2[2];
	assign w3[3] = w2[3];
	assign w3[4] = w2[4];
	assign w3[5] = w2[5];
	assign w3[6] = w2[6];
	assign w3[7] = w2[7];

	assign y0 = w3[0];
	assign y1 = w3[6];
	assign y2 = w3[3];
	assign y3 = w3[5];
	assign y4 = w3[1];
	assign y5 = w3[4];
	assign y6 = -w3[7];
	assign y7 = -w3[2];
		
		
endmodule
