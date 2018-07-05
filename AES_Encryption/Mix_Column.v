`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:24 06/27/2018 
// Design Name: 
// Module Name:    Mix_Column 
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
module Mix_Column(clk,c_in1,c_out
    );
	 input clk;
	 input [127:0] c_in1;
	 output [127:0] c_out;
	 
	 wire [7:0]w1,w2,w3,w4,w5,w6,w7,w8;
	 wire [7:0]w9,w10,w11,w12,w13,w14,w15,w16;
	 wire [7:0]w17,w18,w19,w20,w21,w22,w23,w24;
	 wire [7:0]w25,w26,w27,w28,w29,w30,w31,w32;
	 
	lut2 l20 (.mc_in(c_in1[127:120]),.b(w1));
	lut3 l30 (.mc_in(c_in1[119:112]),.b(w2));
	lut2 l21 (.mc_in(c_in1[119:112]),.b(w3));
	lut3 l31 (.mc_in(c_in1[111:104]),.b(w4));
	lut2 l22 (.mc_in(c_in1[111:104]),.b(w5));
	lut3 l32 (.mc_in(c_in1[103:96]),.b(w6));
	lut2 l23 (.mc_in(c_in1[103:96]),.b(w7));
	lut3 l33 (.mc_in(c_in1[127:120]),.b(w8));
	
	assign c_out[127:120] = (w1 ^ w2 ^ c_in1[111:104] ^ c_in1[103:96]);
	assign c_out[119:112] = (c_in1[127:120] ^ w3 ^ w4 ^ c_in1[103:96]);
	assign c_out[111:104] = (c_in1[127:120] ^ c_in1[119:112] ^ w5 ^ w6);
	assign c_out[103:96] = (w8 ^ c_in1[119:112] ^ c_in1[111:104] ^ w7);
	
	lut2 l24 (.mc_in(c_in1[95:88]),.b(w9));
	lut3 l34 (.mc_in(c_in1[87:80]),.b(w10));
	lut2 l25 (.mc_in(c_in1[87:80]),.b(w11));
	lut3 l35 (.mc_in(c_in1[79:72]),.b(w12));
	lut2 l26 (.mc_in(c_in1[79:72]),.b(w13));
	lut3 l36 (.mc_in(c_in1[71:64]),.b(w14));
	lut2 l27 (.mc_in(c_in1[71:64]),.b(w15));
	lut3 l37 (.mc_in(c_in1[95:88]),.b(w16));
	
	assign c_out[95:88] = (w9 ^ w10 ^ c_in1[79:72] ^ c_in1[71:64]);
	assign c_out[87:80] = (c_in1[95:88] ^ w11 ^ w12 ^ c_in1[71:64]);
	assign c_out[79:72] = (c_in1[95:88] ^ c_in1[87:80] ^ w13 ^ w14);
	assign c_out[71:64] = (w16 ^ c_in1[87:80] ^ c_in1[79:72] ^ w15);
	
	lut2 l28 (.mc_in(c_in1[63:56]),.b(w17));
	lut3 l38 (.mc_in(c_in1[55:48]),.b(w18));
	lut2 l29 (.mc_in(c_in1[55:48]),.b(w19));
	lut3 l39 (.mc_in(c_in1[47:40]),.b(w20));
	lut2 l2A (.mc_in(c_in1[47:40]),.b(w21));
	lut3 l3A (.mc_in(c_in1[39:32]),.b(w22));
	lut2 l2B (.mc_in(c_in1[39:32]),.b(w23));
	lut3 l3B (.mc_in(c_in1[63:56]),.b(w24));
	
	assign c_out[63:56] = (w17 ^ w18 ^ c_in1[47:40] ^ c_in1[39:32]);
	assign c_out[55:48] = (c_in1[63:56] ^ w19 ^ w20 ^ c_in1[39:32]);
	assign c_out[47:40] = (c_in1[63:56] ^ c_in1[55:48] ^ w21 ^ w22);
	assign c_out[39:32] = (w24 ^ c_in1[55:48] ^ c_in1[47:40] ^ w23);
	
	lut2 l2C (.mc_in(c_in1[31:24]),.b(w25));
	lut3 l3C (.mc_in(c_in1[23:16]),.b(w26));
	lut2 l2D (.mc_in(c_in1[23:16]),.b(w27));
	lut3 l3D (.mc_in(c_in1[15:8]),.b(w28));
	lut2 l2E (.mc_in(c_in1[15:8]),.b(w29));
	lut3 l3E (.mc_in(c_in1[7:0]),.b(w30));
	lut2 l2F (.mc_in(c_in1[7:0]),.b(w31));
	lut3 l3F (.mc_in(c_in1[31:24]),.b(w32));
	
	assign c_out[31:24] = (w25 ^ w26 ^ c_in1[15:8]^ c_in1[7:0]);
	assign c_out[23:16] = (c_in1[31:24] ^ w27 ^ w28 ^ c_in1[7:0]);
	assign c_out[15:8] = (c_in1[31:24] ^ c_in1[23:16] ^ w29 ^ w30);
	assign c_out[7:0] = (w32 ^ c_in1[23:16] ^ c_in1[15:8] ^ w31);

endmodule
