`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2016 09:18:46 PM
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(
    input logic reset,
    input logic clock,
    output logic clockDebounce
    );
    
logic [19:0]counterDebounce;
localparam debounceConstant = 1000000;
always@(posedge clock, posedge reset)
begin
    if(reset) counterDebounce <=0;
    else counterDebounce <=counterDebounce+1;
end

always_comb
begin
    if(counterDebounce == debounceConstant) clockDebounce = 1;
    else clockDebounce = 0;
end
endmodule

