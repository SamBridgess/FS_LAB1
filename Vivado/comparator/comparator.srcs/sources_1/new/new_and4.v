`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:36:35 PM
// Design Name: 
// Module Name: new_and4
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


module new_and4(
    input a,
    input b,
    input c,
    input d,
    output result
    );
    
    wire r1, r2;
    
    new_and new_and_instance1(
        .a(a),
        .b(b),
        .result(r1)
    );
    
    new_and new_and_instance2(
        .a(c),
        .b(d),
        .result(r2)
    );
    
    new_and new_and_instance3(
        .a(r1),
        .b(r2),
        .result(result)
    );
endmodule
