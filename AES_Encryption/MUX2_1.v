`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:23 06/27/2018 
// Design Name: 
// Module Name:    MUX2_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX2_1(A1,A2,S,B
    );
	 input [127:0] A1,A2;
	 input S;
	 output reg [127:0]B;
	 
	 always @(*)
	 begin
			if(S==0)
				B=A1;
			else
				B=A2;
	 end
endmodule 