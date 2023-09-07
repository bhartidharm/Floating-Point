`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2023 10:47:58 PM
// Design Name: 
// Module Name: testbench
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


module testbench(    );
    reg [31:0] a_in, b_in;
    wire [31:0] c_out;
    
    sum_of_sqr DUT (a_in, b_in, c_out);
    
    initial begin
    a_in = 32'b0_10000001_00000000000000000000000; 
    b_in = 32'b0_10000000_00000000000000000000000;
    #50 a_in = 32'b0_10000010_01000000000000000000000;
        b_in = 32'b1_10000000_00000000000000000000000;
    #50 a_in = 32'b0_10000001_11000000000000000000000;
        b_in = 32'b0_10000000_00000000000000000000000;
    #50 a_in = 32'b0_10000001_11000000000000000000000;
        b_in = 32'b0_10000000_10000000000000000000000;
    #50 a_in = 32'b0_10000010_01000000000000000000000;
        b_in = 32'b0_10000001_00000000000000000000000;
        #150
        $finish;
    end
endmodule