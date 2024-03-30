`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:47:54 PM
// Design Name: 
// Module Name: new_or
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



module new_or(
    input a,
    input b,
    output result
);

wire temp1, temp2;

nand(temp1,a,a);
nand(temp2,b,b);
nand(result, temp1, temp2);

endmodule
