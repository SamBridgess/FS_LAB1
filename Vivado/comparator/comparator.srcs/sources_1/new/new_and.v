`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:27:37 PM
// Design Name: 
// Module Name: new_and
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


module new_and(
    input a,
    input b,
    output result
    );
    
    wire temp1;
    
    nand(temp1,a,b);
    nand(result, temp1, temp1);
endmodule
