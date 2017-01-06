`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2016 05:03:10 PM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input logic clock,
    output logic f,
    output logic e
    );
    
    logic [8:0] counter;
    always@(posedge clock)
    begin
    counter<=counter+1;
    end
    
    always_comb
    begin
        f=counter[8];
        e=~f;
    end
endmodule
