`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:03 06/27/2018 
// Design Name: 
// Module Name:    DFF_28 
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
module DFF_128(clk,D,Q
    );
input clk;
input [127:0]D;
output reg [127:0]Q;

always @(posedge clk)
begin
		if(clk==1)
			Q=D;
		else
			Q=0;
end
endmodule 