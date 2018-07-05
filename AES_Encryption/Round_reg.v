`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:02 07/02/2018 
// Design Name: 
// Module Name:    Round_reg 
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
module Round_reg(clk,r_in,r_out,key_in,key_out
    );

input clk;
input [127:0]r_in;
input [127:0]key_in;
output reg [127:0]r_out;
output reg [127:0]key_out;

always @(posedge clk)
begin
	if(clk==1)
	begin
		r_out=r_in;
		key_out=key_in;
	end
	else
	begin
		r_out=0;
		key_out=0;
	end
end
endmodule
