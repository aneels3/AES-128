`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:57 07/02/2018 
// Design Name: 
// Module Name:    Sub_Key 
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
module Sub_Key(key_in,mc_sr_out,data_out
    );
	 input [127:0]key_in;
	 input [127:0]mc_sr_out;
	 output [127:0]data_out;

	assign data_out=key_in^mc_sr_out;

endmodule
