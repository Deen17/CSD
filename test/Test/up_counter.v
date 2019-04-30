`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:12 04/29/2019 
// Design Name: 
// Module Name:    up_counter 
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
module up_counter(clk, reset, out);

	output reg [3:0] out;
	input clk, reset;
	reg [31:0]count;
always @(posedge clk)
if(reset) begin
	count <= 32'h00000000;
end else if(count == 32'h05be0000)begin
	count <= 32'h00000000;
end else begin
	count <= count + 1;
	case(count)
		32'h01260000: out <= 4'b1110;
		32'h024c0000: out <= 4'b1101;
		32'h03720000: out <= 4'b1011;
		32'h04980000: out <= 4'b0111;
		default: out <= out;
	endcase
end
endmodule
