`timescale 1ns / 1ps

module dct_ram(
	input [12:0]in0,
	input [12:0]in1,
	input [12:0]in2,
	input [12:0]in3,
	input [12:0]in4,
	input [12:0]in5,
	input [12:0]in6,
	input [12:0]in7, 
	input clk,
	input we,
	input [2:0]addr,
	output reg [12:0]out0,
	output reg [12:0]out1,
	output reg [12:0]out2,
	output reg [12:0]out3,
	output reg [12:0]out4,
	output reg [12:0]out5,
	output reg [12:0]out6,
	output reg [12:0]out7
    );
	 
	 // ********* MEMORY BLOCKS ******** //
	 reg [12:0]r_0[7:0];
	 reg [12:0]r_1[7:0];
	 reg [12:0]r_2[7:0];
	 reg [12:0]r_3[7:0];
	 reg [12:0]r_4[7:0];
	 reg [12:0]r_5[7:0];
	 reg [12:0]r_6[7:0];
	 reg [12:0]r_7[7:0];
	 
	 // ********* R/W BEHAVIOUR ******** //
	 always@(posedge clk) 
	 begin
			case(addr)
				0: begin
					if(we) begin
					r_0[0] = in0; r_0[1] = in1; r_0[2] = in2; r_0[3] = in3; 
					r_0[4] = in4; r_0[5] = in5; r_0[6] = in6; r_0[7] = in7;
					end
					else begin
					out0 <= r_0[0]; out1 <= r_1[0]; out2 <= r_2[0]; out3 <= r_3[0];
					out4 <= r_4[0]; out5 <= r_5[0]; out6 <= r_6[0]; out7 <= r_7[0];
					end
				end
				1:begin
				  if(we) begin
					r_1[0] = in0; r_1[1] = in1; r_1[2] = in2; r_1[3] = in3; 
					r_1[4] = in4; r_1[5] = in5; r_1[6] = in6; r_1[7] = in7; 
					end
					else begin
					out0 <= r_0[1]; out1 <= r_1[1]; out2 <= r_2[1]; out3 <= r_3[1];
					out4 <= r_4[1]; out5 <= r_5[1]; out6 <= r_6[1]; out7 <= r_7[1];
					end
				end
				2:begin
					if(we) begin
					r_2[0] = in0; r_2[1] = in1; r_2[2] = in2; r_2[3] = in3; 
					r_2[4] = in4; r_2[5] = in5; r_2[6] = in6; r_2[7] = in7; 
					end
					else begin
					out0 <= r_0[2]; out1 <= r_1[2]; out2 <= r_2[2]; out3 <= r_3[2];
					out4 <= r_4[2]; out5 <= r_5[2]; out6 <= r_6[2]; out7 <= r_7[2];
					end
				end
				3:begin
					if(we) begin
					r_3[0] = in0; r_3[1] = in1; r_3[2] = in2; r_3[3] = in3; 
					r_3[4] = in4; r_3[5] = in5; r_3[6] = in6; r_3[7] = in7; 
					end
					else begin
					out0 <= r_0[3]; out1 <= r_1[3]; out2 <= r_2[3]; out3 <= r_3[3];
					out4 <= r_4[3]; out5 <= r_5[3]; out6 <= r_6[3]; out7 <= r_7[3];
					end
				end
				4:begin
					if(we) begin
					r_4[0] = in0; r_4[1] = in1; r_4[2] = in2; r_4[3] = in3; 
					r_4[4] = in4; r_4[5] = in5; r_4[6] = in6; r_4[7] = in7;
					end
					else begin
					out0 <= r_0[4]; out1 <= r_1[4]; out2 <= r_2[4]; out3 <= r_3[4];
					out4 <= r_4[4]; out5 <= r_5[4]; out6 <= r_6[4]; out7 <= r_7[4];
					end
				end
				5:begin
					if(we) begin
					r_5[0] = in0; r_5[1] = in1; r_5[2] = in2; r_5[3] = in3; 
					r_5[4] = in4; r_5[5] = in5; r_5[6] = in6; r_5[7] = in7;
					end
					else begin
					out0 <= r_0[5]; out1 <= r_1[5]; out2 <= r_2[5]; out3 <= r_3[5];
					out4 <= r_4[5]; out5 <= r_5[5]; out6 <= r_6[5]; out7 <= r_7[5];
					end
				end
				6:begin
					if(we) begin
					r_6[0] = in0; r_6[1] = in1; r_6[2] = in2; r_6[3] = in3; 
					r_6[4] = in4; r_6[5] = in5; r_6[6] = in6; r_6[7] = in7; 
					end
					else begin
					out0 <= r_0[6]; out1 <= r_1[6]; out2 <= r_2[6]; out3 <= r_3[6];
					out4 <= r_4[6]; out5 <= r_5[6]; out6 <= r_6[6]; out7 <= r_7[6];
					end
				end
				7:begin
					if(we) begin
					r_7[0] = in0; r_7[1] = in1; r_7[2] = in2; r_7[3] = in3; 
					r_7[4] = in4; r_7[5] = in5; r_7[6] = in6; r_7[7] = in7; 
					end
					else begin
					out0 <= r_0[7]; out1 <= r_1[7]; out2 <= r_2[7]; out3 <= r_3[7];
					out4 <= r_4[7]; out5 <= r_5[7]; out6 <= r_6[7]; out7 <= r_7[7];
					end
				end
			endcase
	 end
	 

endmodule
