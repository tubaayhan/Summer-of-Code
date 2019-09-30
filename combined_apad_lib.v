`timescale 1ns / 1ps

module apads2000_(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad0b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };

endmodule


/*********************************************/
module apads4000_(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;
	(*KEEP="TRUE"*)wire cin_w;
	assign cin_w = Cin;

//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(cin_w), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
//(*KEEP_HIERARCHY="TRUE"*) 
apad0b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

//(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
//(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
//(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
//(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
//(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
//(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };


endmodule

/********************************************/
module apads4443(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad4b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad3b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };

endmodule

/************************************************/
module apads221(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad2b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad1b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };


endmodule

/**********************************/
module uns_apads2000_(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad0b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );
	 
 assign Cout = (B==13'b0) ? Cout12: 
					  (Cin && ~Cout12) || (~Cin && Cout12);
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
 
endmodule

/****************************************/
module uns_apads4443(
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad4b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad3b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

 assign Cout = (B==13'b0) ? Cout12: 
					  (Cin && ~Cout12) || (~Cin && Cout12);
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };

endmodule

/*****************************************/

module apads9 (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad0b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(1'b0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  1'b0};

endmodule




module apad_exact (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


	(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
	(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,	
							  Cout9 , Cout10 , Cout11 , Cout12 ;


//assign Cout = Cout7;
//assign S = {S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins0 (
    .A(A[0]), 
    .B(B[0]^Cin), 
    .Cin(Cin), 
    .S(S0), 
    .Cout(Cout0)
    );
	 
(*KEEP_HIERARCHY="TRUE"*) 
apad0b1 inst1 (
    .A(A[1]), 
    .B(B[1]^Cin), 
    .Cin(Cout0), 
    .S(S1), 
    .Cout(Cout1)
    );

(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]), 
    .B(B[2]^Cin), 
    .Cin(Cout1), 
    .S(S2), 
    .Cout(Cout2)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst3 (
    .A(A[3]), 
    .B(B[3]^Cin), 
    .Cin(Cout2), 
    .S(S3), 
    .Cout(Cout3)
    );
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst4 (
    .A(A[4]), 
    .B(B[4]^Cin), 
    .Cin(Cout3), 
    .S(S4), 
    .Cout(Cout4)
    );
	 
	 
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst5 (
    .A(A[5]), 
    .B(B[5]^Cin), 
    .Cin(Cout4), 
    .S(S5), 
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst6 (
    .A(A[6]), 
    .B(B[6]^Cin), 
    .Cin(Cout5), 
    .S(S6), 
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst7 (
    .A(A[7]), 
    .B(B[7]^Cin), 
    .Cin(Cout6), 
    .S(S7), 
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst8 (
    .A(A[8]), 
    .B(B[8]^Cin), 
    .Cin(Cout7), 
    .S(S8), 
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst9 (
    .A(A[9]), 
    .B(B[9]^Cin), 
    .Cin(Cout8), 
    .S(S9), 
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst10 (
    .A(A[10]), 
    .B(B[10]^Cin), 
    .Cin(Cout9), 
    .S(S10), 
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst11 (
    .A(A[11]), 
    .B(B[11]^Cin), 
    .Cin(Cout10), 
    .S(S11), 
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)	 
apad0b1 inst12 (
    .A(A[12]), 
    .B(B[12]^Cin), 
    .Cin(Cout11), 
    .S(S12), 
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0};
 endmodule
 
/*********************************************/
module apads4(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module uns_apads44433(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst0(
.A(A[0]),
.B(B[0]^Cin),
.Cin(Cin),
.S(S0),
.Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst1(
.A(A[1]),
.B(B[1]^Cin),
.Cin(Cout0),
.S(S1),
.Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst2(
.A(A[2]),
.B(B[2]^Cin),
.Cin(Cout1),
.S(S2),
.Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 inst3(
.A(A[3]),
.B(B[3]^Cin),
.Cin(Cout2),
.S(S3),
.Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 inst4(
.A(A[4]),
.B(B[4]^Cin),
.Cin(Cout3),
.S(S4),
.Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst5(
.A(A[5]),
.B(B[5]^Cin),
.Cin(Cout4),
.S(S5),
.Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst6(
.A(A[6]),
.B(B[6]^Cin),
.Cin(Cout5),
.S(S6),
.Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst7(
.A(A[7]),
.B(B[7]^Cin),
.Cin(Cout6),
.S(S7),
.Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst8(
.A(A[8]),
.B(B[8]^Cin),
.Cin(Cout7),
.S(S8),
.Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst9(
.A(A[9]),
.B(B[9]^Cin),
.Cin(Cout8),
.S(S9),
.Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst10(
.A(A[10]),
.B(B[10]^Cin),
.Cin(Cout9),
.S(S10),
.Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst11(
.A(A[11]),
.B(B[11]^Cin),
.Cin(Cout10),
.S(S11),
.Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst12(
.A(A[12]),
.B(B[12]^Cin),
.Cin(Cout11),
.S(S12),
.Cout(Cout12) );
 assign Cout = (B==13'b0) ? Cout12: 
 (Cin && ~Cout12) || (~Cin && Cout12);
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule
 
/*********************************************/
module uns_apads44(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst0(
.A(A[0]),
.B(B[0]^Cin),
.Cin(Cin),
.S(S0),
.Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst1(
.A(A[1]),
.B(B[1]^Cin),
.Cin(Cout0),
.S(S1),
.Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2(
.A(A[2]),
.B(B[2]^Cin),
.Cin(Cout1),
.S(S2),
.Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst3(
.A(A[3]),
.B(B[3]^Cin),
.Cin(Cout2),
.S(S3),
.Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst4(
.A(A[4]),
.B(B[4]^Cin),
.Cin(Cout3),
.S(S4),
.Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst5(
.A(A[5]),
.B(B[5]^Cin),
.Cin(Cout4),
.S(S5),
.Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst6(
.A(A[6]),
.B(B[6]^Cin),
.Cin(Cout5),
.S(S6),
.Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst7(
.A(A[7]),
.B(B[7]^Cin),
.Cin(Cout6),
.S(S7),
.Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst8(
.A(A[8]),
.B(B[8]^Cin),
.Cin(Cout7),
.S(S8),
.Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst9(
.A(A[9]),
.B(B[9]^Cin),
.Cin(Cout8),
.S(S9),
.Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst10(
.A(A[10]),
.B(B[10]^Cin),
.Cin(Cout9),
.S(S10),
.Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst11(
.A(A[11]),
.B(B[11]^Cin),
.Cin(Cout10),
.S(S11),
.Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst12(
.A(A[12]),
.B(B[12]^Cin),
.Cin(Cout11),
.S(S12),
.Cout(Cout12) );
 assign Cout = (B==13'b0) ? Cout12: 
 (Cin && ~Cout12) || (~Cin && Cout12);
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads43(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule
/*********************************************/
module apads4444(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads42(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads443(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads44433(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule
 
/*********************************************/
module apads44(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads44444(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads442(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad2b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads444433(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule

/*********************************************/
module apads444(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins0 (
    .A(A[0]),
    .B(B[0]^Cin),
    .Cin(Cin),
    .S(S0),
    .Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins1 (
    .A(A[1]),
    .B(B[1]^Cin),
    .Cin(Cout0),
    .S(S1),
    .Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cout1),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule


/*********************************************/
module uns_apads444(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst0(
.A(A[0]),
.B(B[0]^Cin),
.Cin(Cin),
.S(S0),
.Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst1(
.A(A[1]),
.B(B[1]^Cin),
.Cin(Cout0),
.S(S1),
.Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst2(
.A(A[2]),
.B(B[2]^Cin),
.Cin(Cout1),
.S(S2),
.Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst3(
.A(A[3]),
.B(B[3]^Cin),
.Cin(Cout2),
.S(S3),
.Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst4(
.A(A[4]),
.B(B[4]^Cin),
.Cin(Cout3),
.S(S4),
.Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst5(
.A(A[5]),
.B(B[5]^Cin),
.Cin(Cout4),
.S(S5),
.Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst6(
.A(A[6]),
.B(B[6]^Cin),
.Cin(Cout5),
.S(S6),
.Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst7(
.A(A[7]),
.B(B[7]^Cin),
.Cin(Cout6),
.S(S7),
.Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst8(
.A(A[8]),
.B(B[8]^Cin),
.Cin(Cout7),
.S(S8),
.Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst9(
.A(A[9]),
.B(B[9]^Cin),
.Cin(Cout8),
.S(S9),
.Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst10(
.A(A[10]),
.B(B[10]^Cin),
.Cin(Cout9),
.S(S10),
.Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst11(
.A(A[11]),
.B(B[11]^Cin),
.Cin(Cout10),
.S(S11),
.Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst12(
.A(A[12]),
.B(B[12]^Cin),
.Cin(Cout11),
.S(S12),
.Cout(Cout12) );
 assign Cout = (B==13'b0) ? Cout12: 
 (Cin && ~Cout12) || (~Cin && Cout12);
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule
/*********************************************/
module uns_apads444433(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S0 , S1 ,  S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
(*KEEP="TRUE"*)wire Cout0 , Cout1 , Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8, Cout9 , Cout10 , Cout11 , Cout12;
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst0(
.A(A[0]),
.B(B[0]^Cin),
.Cin(Cin),
.S(S0),
.Cout(Cout0) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst1(
.A(A[1]),
.B(B[1]^Cin),
.Cin(Cout0),
.S(S1),
.Cout(Cout1) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst2(
.A(A[2]),
.B(B[2]^Cin),
.Cin(Cout1),
.S(S2),
.Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad4b1 inst3(
.A(A[3]),
.B(B[3]^Cin),
.Cin(Cout2),
.S(S3),
.Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 inst4(
.A(A[4]),
.B(B[4]^Cin),
.Cin(Cout3),
.S(S4),
.Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 inst5(
.A(A[5]),
.B(B[5]^Cin),
.Cin(Cout4),
.S(S5),
.Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst6(
.A(A[6]),
.B(B[6]^Cin),
.Cin(Cout5),
.S(S6),
.Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst7(
.A(A[7]),
.B(B[7]^Cin),
.Cin(Cout6),
.S(S7),
.Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst8(
.A(A[8]),
.B(B[8]^Cin),
.Cin(Cout7),
.S(S8),
.Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst9(
.A(A[9]),
.B(B[9]^Cin),
.Cin(Cout8),
.S(S9),
.Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst10(
.A(A[10]),
.B(B[10]^Cin),
.Cin(Cout9),
.S(S10),
.Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst11(
.A(A[11]),
.B(B[11]^Cin),
.Cin(Cout10),
.S(S11),
.Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst12(
.A(A[12]),
.B(B[12]^Cin),
.Cin(Cout11),
.S(S12),
.Cout(Cout12) );
 assign Cout = (B==13'b0) ? Cout12: 
 (Cin && ~Cout12) || (~Cin && Cout12);
assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 ,  S1 ,  S0 };
endmodule




module apads99 (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


    (*KEEP="TRUE"*)wire S2 ,  S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
    (*KEEP="TRUE"*)wire Cout2 , Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,   
                              Cout9 , Cout10 , Cout11 , Cout12 ;


(*KEEP_HIERARCHY="TRUE"*)
apad0b1 inst2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(1'b0),
    .S(S2),
    .Cout(Cout2)
    );
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3)
    );
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4)
    );
     
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , S2 , 1'b0 ,  1'b0};

endmodule



module apads999 (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


    (*KEEP="TRUE"*)wire S3 , S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
    (*KEEP="TRUE"*)wire Cout3 ,  Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,   
                              Cout9 , Cout10 , Cout11 , Cout12 ;

     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(1'b0),
    .S(S3),
    .Cout(Cout3)
    );
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4)
    );
     
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , S3 , 1'b0  , 1'b0 ,  1'b0};

endmodule

module apads9999 (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


    (*KEEP="TRUE"*)wire S4 , S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
    (*KEEP="TRUE"*)wire Cout4  , Cout5 , Cout6 ,  Cout7, Cout8,   
                              Cout9 , Cout10 , Cout11 , Cout12 ;

     
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(1'b0),
    .S(S4),
    .Cout(Cout4)
    );
     
     
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  S4 , 1'b0  , 1'b0  , 1'b0 ,  1'b0};

endmodule

module apads99999 (
    input [12:0] A,
    input [12:0] B,
    input Cin,
    output [12:0] S,
    output Cout
    );


    (*KEEP="TRUE"*)wire S5 ,  S6 ,  S7 , S8 , S9 , S10 ,S11 , S12;
    (*KEEP="TRUE"*)wire Cout5 , Cout6 ,  Cout7, Cout8,    Cout9 , Cout10 , Cout11 , Cout12 ;
   
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(1'b0),
    .S(S5),
    .Cout(Cout5)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11)
    );
(*KEEP_HIERARCHY="TRUE"*)     
apad0b1 inst12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12)
    );

assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
 assign S = {S12, S11, S10, S9 , S8, S7 , S6 ,  S5 ,  1'b0  , 1'b0  , 1'b0  , 1'b0 ,  1'b0};

endmodule
/*********************************************/
module apads99933(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S3, S4, S5, S6, S7, S8, S9, S10, S11, Cout12;
(*KEEP="TRUE"*)wire Cout3, Cout4, Cout5, Cout6, Cout7, Cout8, Cout9, Cout10, Cout11, S12;
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cin),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9, S8, S7, S6, S5, S4, S3, 1'b0,1'b0,1'b0};
endmodule

/*********************************************/
module apads993(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, Cout12;
(*KEEP="TRUE"*)wire Cout2, Cout3, Cout4, Cout5, Cout6, Cout7, Cout8, Cout9, Cout10, Cout11, S12;
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins2 (
    .A(A[2]),
    .B(B[2]^Cin),
    .Cin(Cin),
    .S(S2),
    .Cout(Cout2) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cout2),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9, S8, S7, S6, S5, S4, S3, S2, 1'b0,1'b0};
endmodule

/*********************************************/
module apads9993(input [12:0] A, input [12:0] B, input Cin, output [12:0] S, output Cout);
(*KEEP="TRUE"*)wire S3, S4, S5, S6, S7, S8, S9, S10, S11, Cout12;
(*KEEP="TRUE"*)wire Cout3, Cout4, Cout5, Cout6, Cout7, Cout8, Cout9, Cout10, Cout11, S12;
(*KEEP_HIERARCHY="TRUE"*)
apad3b1 ins3 (
    .A(A[3]),
    .B(B[3]^Cin),
    .Cin(Cin),
    .S(S3),
    .Cout(Cout3) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins4 (
    .A(A[4]),
    .B(B[4]^Cin),
    .Cin(Cout3),
    .S(S4),
    .Cout(Cout4) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins5 (
    .A(A[5]),
    .B(B[5]^Cin),
    .Cin(Cout4),
    .S(S5),
    .Cout(Cout5) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins6 (
    .A(A[6]),
    .B(B[6]^Cin),
    .Cin(Cout5),
    .S(S6),
    .Cout(Cout6) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins7 (
    .A(A[7]),
    .B(B[7]^Cin),
    .Cin(Cout6),
    .S(S7),
    .Cout(Cout7) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins8 (
    .A(A[8]),
    .B(B[8]^Cin),
    .Cin(Cout7),
    .S(S8),
    .Cout(Cout8) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins9 (
    .A(A[9]),
    .B(B[9]^Cin),
    .Cin(Cout8),
    .S(S9),
    .Cout(Cout9) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins10 (
    .A(A[10]),
    .B(B[10]^Cin),
    .Cin(Cout9),
    .S(S10),
    .Cout(Cout10) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins11 (
    .A(A[11]),
    .B(B[11]^Cin),
    .Cin(Cout10),
    .S(S11),
    .Cout(Cout11) );
(*KEEP_HIERARCHY="TRUE"*)
apad0b1 ins12 (
    .A(A[12]),
    .B(B[12]^Cin),
    .Cin(Cout11),
    .S(S12),
    .Cout(Cout12) );
 
 assign Cout = ((A[12]^B[12])^Cout12)^Cin ;
assign S = {S12, S11, S10, S9, S8, S7, S6, S5, S4, S3, 1'b0,1'b0,1'b0};
endmodule
