`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:07:20 PM
// Design Name: 
// Module Name: first_column_part
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


module first_column_part(
        input a,
        input b,
        output result1,
        output result2
    );
    
    wire c;
    
    new_xnor new_xnor_instance1(
        .a(a),
        .b(b),
        .result(result1)
    );
    
    nand(c,b,b);
    
    new_and new_and_instance1(
        .a(a),
        .b(c),
        .result(result2)
    );
endmodule
