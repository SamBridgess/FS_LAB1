`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:54:53 PM
// Design Name: 
// Module Name: new_nor
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



module new_nor(
    input a,
    input b,
    output result
);

wire temp1;
new_or new_or_instace1(
    .a(a),
    .b(b),
    .result(temp1)
);

nand(result,temp1,temp1);

endmodule
