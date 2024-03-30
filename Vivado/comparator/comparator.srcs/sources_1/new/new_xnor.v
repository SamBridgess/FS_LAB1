`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:10:26 PM
// Design Name: 
// Module Name: new_xnor
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


module new_xnor(
    input a,
    input b,
    output result
);

wire temp1, temp2, temp3, temp4;

nand(temp1,a,b);
nand(temp2,a,temp1);
nand(temp3,b,temp1);
nand(temp4,temp2,temp3);
nand(result,temp4,temp4);

endmodule
