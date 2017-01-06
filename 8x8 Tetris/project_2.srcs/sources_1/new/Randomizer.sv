`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2016 20:47:36
// Design Name: 
// Module Name: Randomizer
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


module Randomizer(
    input logic clock,
    input int jA,
    output reg [7:0] red
    );
    logic [2:0]counter;
    always_ff @ (posedge clock) begin
          counter <= counter+1;
          end
    always_comb begin
    if(jA==0) begin
    if(counter==3'b000 || counter == 3'b001) red = 8'b00011000;
    if(counter==3'b010 || counter == 3'b011) red = 8'b00011100;
    if(counter==3'b100 || counter == 3'b101) red = 8'b00001000;
    if(counter==3'b110 || counter == 3'b111) red = 8'b00001000;
    end
    end
endmodule
