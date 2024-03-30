`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:44:25 PM
// Design Name: 
// Module Name: new_and3
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


module new_and3(
    input a,
    input b,
    input c,
    output result
    );
    
    wire r1;
    
    new_and new_and_instance1(
        .a(a),
        .b(b),
        .result(r1)
    );
    
    new_and new_and_instances2(
        .a(c),
        .b(r1),
        .result(result)
    );
   
endmodule
