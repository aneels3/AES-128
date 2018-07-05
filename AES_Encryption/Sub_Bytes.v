`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:13:27 06/27/2018 
// Design Name: 
// Module Name:    Sub_Bytes 
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
module Sub_Bytes(A,B1
    );
	 input  [127:0] A;
	 output  [127:0] B1;

	Sbox B0 ( .a(A[127:120]),.b(B1[127:120]));
	Sbox BB1 ( .a(A[119:112]),.b(B1[119:112]));
	Sbox B2 ( .a(A[111:104]),.b(B1[111:104]));
	Sbox B3 ( .a(A[103:96]),.b(B1[103:96]));

	Sbox B4 ( .a(A[95:88]),.b(B1[95:88]));
	Sbox B5 ( .a(A[87:80]),.b(B1[87:80]));
	Sbox B6 ( .a(A[79:72]),.b(B1[79:72]));
	Sbox B7 ( .a(A[71:64]),.b(B1[71:64]));

	Sbox B8 ( .a(A[63:56]),.b(B1[63:56]));
	Sbox B9 ( .a(A[55:48]),.b(B1[55:48]));
	Sbox B10 ( .a(A[47:40]),.b(B1[47:40]));
	Sbox B11 ( .a(A[39:32]),.b(B1[39:32]));

	Sbox B12 ( .a(A[31:24]),.b(B1[31:24]));
	Sbox B13 ( .a(A[23:16]),.b(B1[23:16]));
	Sbox B14 ( .a(A[15:8]),.b(B1[15:8]));
	Sbox B15 ( .a(A[7:0]),.b(B1[7:0]));

endmodule

