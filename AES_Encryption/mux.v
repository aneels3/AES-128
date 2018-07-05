`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:40:00 06/28/2018 
// Design Name: 
// Module Name:    mux 
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
module mux(a1,a2,s,b
    );
	 input [127:0] a1,a2;
	 input s;
	 output reg [127:0]b;
	 
	 always @(*)
	 begin
		if(s==0)
			b=a1;
		else
			b=a2;
	 end
endmodule
