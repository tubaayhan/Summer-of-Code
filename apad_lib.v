`timescale 1ns / 1ps

module apad0b1(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==0  & B ==0 & Cin ==1 ) ? 1'b1 : 
			  (A ==0  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==0  & B ==1 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==0 & Cin ==0 ) ? 1'b1 : 
           (A ==1  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==1 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  0;
			  
			  
assign Cout = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==1  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  0;


endmodule

/******************************/
module apad1b1(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==0  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==0  & B ==1 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==0 & Cin ==0 ) ? 1'b1 : 
           (A ==1  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==1 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  0;
			  
			  
assign Cout = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==0  & B ==1 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==1  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  0;
endmodule

/******************************/
module apad2b1(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==0  & B ==0 & Cin ==1 ) ? 1'b1 : 
			  (A ==0  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==0  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  (A ==1  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==1 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  0;
			  
			  
assign Cout = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==1 ) ? 1'b0 : 
				  (A ==1  & B ==0 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  0;


endmodule

/******************************/
module apad3b1( input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==0  & B ==0 & Cin ==1 ) ? 1'b1 : 
			  (A ==0  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==0  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  (A ==1  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  0;
			  
			  
assign Cout = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==1 ) ? 1'b0 : 
				  (A ==1  & B ==0 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  0;

endmodule
 
/******************************/
module apad4b1( input A,
   input B,
    input Cin,
    output S,
    output Cout
    );

assign S = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==0  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==0  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  (A ==1  & B ==0 & Cin ==0 ) ? 1'b0 : 
           (A ==1  & B ==0 & Cin ==1 ) ? 1'b0 : 
			  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
           (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
			  0;
			  
			  
assign Cout = (A ==0  & B ==0 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==0 & Cin ==1 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==0 ) ? 1'b0 : 
				  (A ==0  & B ==1 & Cin ==1 ) ? 1'b0 : 
				  (A ==1  & B ==0 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==0 & Cin ==1 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==0 ) ? 1'b1 : 
				  (A ==1  & B ==1 & Cin ==1 ) ? 1'b1 : 
				  0;


endmodule
