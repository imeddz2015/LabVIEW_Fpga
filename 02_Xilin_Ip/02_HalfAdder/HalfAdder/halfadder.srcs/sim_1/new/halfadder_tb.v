`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2017 09:14:42 AM
// Design Name: 
// Module Name: halfadder_tb
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

module halfadder_tb(
    reg r_BIT1 = 0;
    reg r_BIT2 = 0;
    wire w_SUM;
    wire w_CARRY;
    );
    
    halfadder halfadder_i
    (
        .in_x(r_BIT1),
        .in_y(r_BIT2),
        .out_sum(w_SUM),
        .out_carry(w_CARRY)
    );
    
    initial
    begin
        r_BIT1 = 1'b0;
        r_BIT2 = 1'b0;

        #10;
        r_BIT1 = 1'b0;
        r_BIT2 = 1'b0;
    end
endmodule
