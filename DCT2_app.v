`timescale 1ns / 1ps

module DCT2_app(
	 input [12:0]x0,
	 input [12:0]x1,
	 input [12:0]x2,
	 input [12:0]x3,
	 input [12:0]x4,
	 input [12:0]x5,
	 input [12:0]x6,
	 input [12:0]x7, 
	 input [2:0]addr,
	 output signed [13:0]y0,
	 output signed [13:0]y1,
	 output signed [13:0]y2,
	 output signed [13:0]y3,
	 output signed [13:0]y4,
	 output signed [13:0]y5,
	 output signed [13:0]y6,
	 output signed [13:0]y7
    );
	
	/* Internal connections */	
	wire signed [12:0]w1[7:0];
	wire signed [12:0]w2[7:0];
	wire signed [13:0]w3[7:0];

	(*KEEP="TRUE"*)wire [13:0]w3u[1:0];
	/**************************** Computation ****************************/
	uns_apads44 addu15(w2[0],w2[1],1'b0,w3u[0][12:0],w3u[0][13]);
	uns_apads44 addu16(w2[0],w2[1],1'b1,w3u[1][12:0],w3u[1][13]);
apads44   add1(x7,x0,1'b0,w1[0],);
apads44   add2(x6,x1,1'b0,w1[1],);
apads44   add3(x5,x2,1'b0,w1[2],);
apads44   add4(x4,x3,1'b0,w1[3],);
apads44   add5(x3,x4,1'b1,w1[4],); 
apads44   add6(x2,x5,1'b1,w1[5],);
apads44   add7(x1,x6,1'b1,w1[6],);
apads44   add8(x0,x7,1'b1,w1[7],);
apads44   add9( w1[0],w1[3],1'b0,w2[0],);
apads44    add10(w1[1],w1[2],1'b0,w2[1],);
apads44      add11(w1[1],w1[2],1'b1,w2[2],);
apads44     add12(w1[0],w1[3],1'b1,w2[3],);
 assign w2[4] = w1[4];
 assign w2[5] = w1[5];
apads44     add13(w1[6],w1[7],1'b0,w2[6],);
apads44    add14(w1[6],w1[7],1'b1,w2[7],);
apads44   add15(w2[0],w2[1],1'b0,w3[0][12:0],w3[0][13]);
apads44   add16(w2[0],w2[1],1'b1,w3[1][12:0],w3[1][13]);

	assign w3[2] = {w2[2][12],w2[2]};
	assign w3[3] = {w2[3][12],w2[3]};
	assign w3[4] = {w2[4][12],w2[4]};
	assign w3[5] = {w2[5][12],w2[5]};
	assign w3[6] = {w2[6][12],w2[6]};
	assign w3[7] = {w2[7][12],w2[7]};

	assign y0 = (addr==8'b1) ? w3u[0] : w3[0];
	assign y1 = w3[6];
	assign y2 = w3[3];
	assign y3 = w3[5];
	assign y4 = (addr==8'b1) ? w3u[1] : w3[1];
	assign y5 = w3[4];
	assign y6 = -w3[7];
	assign y7 = -w3[2];
		
		
endmodule
