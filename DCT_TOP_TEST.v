`timescale 1ns / 1ps

module DCT_TOP_TEST;

	// Inputs
	reg [7:0] x0;
	reg [7:0] x1;
	reg [7:0] x2;
	reg [7:0] x3;
	reg [7:0] x4;
	reg [7:0] x5;
	reg [7:0] x6;
	reg [7:0] x7;
	reg en;
	reg clk;

	// Outputs
	wire [13:0] y0;
	wire [13:0] y1;
	wire [13:0] y2;
	wire [13:0] y3;
	wire [13:0] y4;
	wire [13:0] y5;
	wire [13:0] y6;
	wire [13:0] y7;

	// Instantiate the Unit Under Test (UUT)
	dct_top uut (
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.en(en), 
		.clk(clk), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7)
	);
	
	initial begin
	$dumpfile ("dct_top.vcd"); // Change filename as appropriate. 
   $dumpvars(1, DCT_TOP_TEST.uut);
	end
	
	integer fin;
	integer fout;
	integer read;
	integer i;
	reg [7:0]data0;
	reg [7:0]data1;
	reg [7:0]data2;
	reg [7:0]data3;
	reg [7:0]data4;
	reg [7:0]data5;
	reg [7:0]data6;
	reg [7:0]data7;
	initial clk = 0;
	initial en = 1;
	always #100 clk=~clk;
	
	 

	initial begin
		// Initialize Inputs
		fin=$fopen("input_barbara.txt","r");
		fout=$fopen("output_barbara_PS.txt","w");
		#50;
		for(i=0;i<=255;i=i+1) begin
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7; 
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		read = $fscanf(fin,"%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",data0,data1,data2,data3,data4,data5,data6,data7); 
		x0 = data0; x1 = data1; x2 = data2; x3 = data3; x4 = data4; x5 = data5; x6 = data6; x7 = data7;
		#200;
		en = 0;
		#150;
		$fdisplay(fout,"%d",y0);$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#200;
		$fdisplay(fout,"%d",$signed(y0));$fdisplay(fout,"%d",$signed(y1));$fdisplay(fout,"%d",$signed(y2));$fdisplay(fout,"%d",$signed(y3));
		$fdisplay(fout,"%d",$signed(y4));$fdisplay(fout,"%d",$signed(y5));$fdisplay(fout,"%d",$signed(y6));$fdisplay(fout,"%d",$signed(y7));
		#50;
		//#640;
		en=1;
		end

		// Wait 100 ns for global reset to finish
		#100;
      $fclose(fin);  
		$fclose(fout);
		
		$finish;
		// Add stimulus here
		
	end
      
endmodule

