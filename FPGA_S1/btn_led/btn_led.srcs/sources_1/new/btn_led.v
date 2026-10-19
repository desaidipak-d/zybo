`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2026 09:26:56 PM
// Design Name: 
// Module Name: btn_led
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


module btn_led(
    input sysclk,
    output [3:0] led
    );

reg [26:0] count = 0;

always @(posedge sysclk)
    count = count + 1;
    
assign led[0] = count[26];
assign led[1] = count[25];
assign led[2] = count[23];
assign led[3] = count[24];
endmodule


 