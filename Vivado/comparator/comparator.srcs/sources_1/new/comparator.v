`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 03:01:05 PM
// Design Name: 
// Module Name: comparator
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

module Comparator(
    input a0,
    input b0,
    input a1,
    input b1,
    input a2,
    input b2,
    input a3,
    input b3,
    output equal,
    output b_bigger,
    output a_bigger
);

wire wire0, wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8, temp1, temp2, temp3, temp_result1, temp_result3;

first_column_part first_column_part_instance1(
    .a(a0),
    .b(b0),
    .result1(wire0),
    .result2(wire1)
);

first_column_part first_column_part_instance2(
    .a(a1),
    .b(b1),
    .result1(wire2),
    .result2(wire3)
);

first_column_part first_column_part_instance3(
    .a(a2),
    .b(b2),
    .result1(wire4),
    .result2(wire5)
);

first_column_part first_column_part_instance(
    .a(a3),
    .b(b3),
    .result1(wire6),
    .result2(wire7)
);

new_and4 new_and4_instance1(
    .a(wire0),
    .b(wire2),
    .c(wire4),
    .d(wire6),
    .result(temp_result1)
);

assign equal = temp_result1;

new_and4 new_and4_instance2(
    .a(wire1),
    .b(wire2),
    .c(wire4),
    .d(wire6),
    .result(temp1)
);

new_and3 new_and3_instance1(
    .a(wire3),
    .b(wire4),
    .c(wire6),
    .result(temp2)
);

new_and new_and_instance1(
    .a(wire5),
    .b(wire6),
    .result(temp3)
);

new_or4 new_or4_instace1(
    .a(temp1),
    .b(temp2),
    .c(temp3),
    .d(wire7),
    .result(temp_result3)
);

assign a_bigger = temp_result3;

new_nor new_nor_instance1 (
    .a(temp_result1),
    .b(temp_result3),
    .result(b_bigger)
);

endmodule
