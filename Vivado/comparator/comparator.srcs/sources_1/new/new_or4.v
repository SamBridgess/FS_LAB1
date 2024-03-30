`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:51:10 PM
// Design Name: 
// Module Name: new_or4
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


module new_or4(
    input a,
    input b,
    input c,
    input d,
    output result
    );
    
    wire temp1, temp2;
    
    new_or new_or_instance1(
        .a(a),
        .b(b),
        .result(temp1)
    );
    
    new_or new_or_instance2(
        .a(c),
        .b(d),
        .result(temp2)
    );
    
    new_or new_or_instance3(
        .a(temp1),
        .b(temp2),
        .result(result)
    );
    
endmodule
