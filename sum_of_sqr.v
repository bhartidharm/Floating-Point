`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 10:29:08 AM
// Design Name: 
// Module Name: sum_of_sqr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sum_of_sqr(a_in, b_in, c_out );
parameter m = 8, n = 23;

input [m+n:0] a_in, b_in;
output [m+n:0] c_out;

wire [m+n:0] a_2, b_2;

fpmul_32b mult1(a_in, a_in, a_2);
fpmul_32b mult2(b_in, b_in, b_2);

fpaddsub_32b add1(a_2, b_2, 'b0, c_out);

endmodule
