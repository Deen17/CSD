`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:28 04/28/2019 
// Design Name: 
// Module Name:    test_kypd 
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
module test_kypd(col, row, leds, clk, reset);

input clk;
input reset;
output reg [7:0] leds;
output [3:0] col;
input [3:0] row;

wire [3:0] upc_out;

	up_counter upc(
		.clk(clk),
		.reset(reset),
		.out(upc_out)
	);
assign col = upc_out;

always @(posedge clk)
begin
	if(!col[0]&& !row[0])
		leds <= 8'h01;
	else if(!col[1]&& !row[0])
		leds <= 8'h02; 
	else if(!col[2]&& !row[0])
		leds <= 8'h03;
	else if(!col[0]&& !row[1])
		leds <= 8'h04;
	else if(!col[1]&& !row[1])
		leds <= 8'h05;
	else if(!col[2]&& !row[1])
		leds <= 8'h06;
	else if(!col[0]&& !row[2])
		leds <= 8'h07;
	else if(!col[1]&& !row[2])
		leds <= 8'h08;
	else if(!col[2]&& !row[2])
		leds <= 8'h09;
	else if(!col[0]&& !row[3])
		leds <= 8'h00;
	else if(!col[1]&& !row[3])
		leds <= 8'h0f;
	else if(!col[2]&& !row[3])
		leds <= 8'h0e;
	else if(!col[3]&& !row[0])
		leds <= 8'h0a;
	else if(!col[3]&& !row[1])
		leds <= 8'h0b;
	else if(!col[3]&& !row[2])
		leds <= 8'h0c;
	else if (!col[3]&&!row[3])
		leds <= 8'h0d;
	else leds <= 8'h00;
end
endmodule 