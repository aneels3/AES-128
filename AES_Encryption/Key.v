`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:19 06/27/2018 
// Design Name: 
// Module Name:    Key 
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
module Key(rc,k_in,k_out
    );
	 input [3:0] rc;
	 input [127:0]k_in;
	 output [127:0]k_out;

wire [31:0] W0,W1,W2,W3,temp;

	assign W3 = k_in[31:0];
	assign W2 = k_in[63:32];
	assign W1 = k_in[95:64];
	assign W0 = k_in[127:96];
		
		 Sbox t1(.a(W3[23:16]),.b(temp[31:24]));
       Sbox t2(.a(W3[15:8]),.b(temp[23:16]));
       Sbox t3(.a(W3[7:0]),.b(temp[15:8]));
       Sbox t4(.a(W3[31:24]),.b(temp[7:0]));
		 
	assign k_out[127:96]= (W0 ^ temp) ^ rcon(rc);
	assign k_out[95:64] = (W0 ^ temp ^ rcon(rc))^ W1;
   assign k_out[63:32] = (W0 ^ temp ^ rcon(rc)^ W1)^ W2;
   assign k_out[31:0]  = (W0 ^ temp ^ rcon(rc)^ W1 ^ W2) ^ W3;
		 
	function [31:0] rcon;
    input[3:0]	rc;
      case(rc)	
			4'h0: rcon=32'h01000000;
         4'h1: rcon=32'h02000000;
         4'h2: rcon=32'h04000000;
         4'h3: rcon=32'h08000000;
         4'h4: rcon=32'h10000000;
         4'h5: rcon=32'h20000000;
         4'h6: rcon=32'h40000000;
         4'h7: rcon=32'h80000000;
         4'h8: rcon=32'h1b000000;
         4'h9: rcon=32'h36000000;
         default: rcon=32'h00000000;
       endcase
   endfunction	 
endmodule
