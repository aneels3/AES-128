`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:20:19 06/28/2018
// Design Name:   AES_Encryption
// Module Name:   E:/IITB_Project/AES_Pipe/AES_test.v
// Project Name:  AES_Pipe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AES_Encryption
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AES_test;

	// Inputs
	reg clk;
	//reg SEL1;
	//reg SEL2;
	reg [127:0] Data_in;
	reg [127:0] key_in;

	// Outputs
	wire [127:0]cipher_out;
	
	// Instantiate the Unit Under Test (UUT)
	AES_Encryption uut (
		.clk(clk), 
	 //.SEL1(SEL1), 
	 //.SEL2(SEL2), 
		.Data_in(Data_in), 
		.key_in(key_in), 
		.cipher_out(cipher_out)
	);
	initial begin
		// Initialize Inputs
		clk = 0;
		Data_in = 128'h3243f6a8885a308d313198a2e0370734;
		key_in =  128'h2b7e151628aed2a6abf7158809cf4f3c;
		// Wait 100 ns for global reset to finis
        
		// Add stimulus here

	end
always #2 clk=~clk;
endmodule

