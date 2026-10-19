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
    input [3:0] btn,
    output reg [3:0] led
    );
always @(posedge sysclk) begin
     if (btn[0]==1'b1) begin
        led[0] <= 1'b1;
     end else begin
        led[0]<=1'b0;
     end
     
     if (btn[1]==1'b1) begin
        led[1] <= 1'b1;
     end else begin
        led[1]<=1'b0;
     end
     
     
     if (btn[2]==1'b1) begin
        led[2] <= 1'b1;
     end else begin
        led[2]<=1'b0;
     end
     
     if (btn[3]==1'b1) begin
        led[3] <= 1'b1;
     end else begin
        led[3]<=1'b0;
     end
    end
endmodule


 