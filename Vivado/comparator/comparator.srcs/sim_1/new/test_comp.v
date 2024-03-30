`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 04:18:35 PM
// Design Name: 
// Module Name: test_comp
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

module test_comp;
    reg a0_in = 0; 
    reg b0_in = 0;
    reg a1_in = 0;
    reg b1_in = 0;
    reg a2_in = 0; 
    reg b2_in = 0;
    reg a3_in = 0;
    reg b3_in = 0;
    wire res_equal, res_b_bigger, res_a_bigger;
    
    
    Comparator comparator_instance(
        .a0(a0_in),
        .b0(b0_in),
        .a1(a1_in),
        .b1(b1_in),
        .a2(a2_in),
        .b2(b2_in),
        .a3(a3_in),
        .b3(b3_in),
        .equal(res_equal),
        .b_bigger(res_b_bigger),
        .a_bigger(res_a_bigger)
    );
    
    integer i, j;
    initial begin
        for(i = 0; i < 16; i = i + 1) begin
             for(j = 0; j < 16; j = j + 1) begin
                a0_in <= i[0];
                a1_in <= i[1];
                a2_in <= i[2];
                a3_in <= i[3];
                b0_in <= j[0];
                b1_in <= j[1];
                b2_in <= j[2];
                b3_in <= j[3];
                
                #10
                
                if(i == j && res_equal == 1 && res_b_bigger == 0 &&  res_a_bigger == 0) begin
                    $display("Correct equal!   res_equal:%d, res_b_bigger:%d, res_a_bigger:%d, a:%d%d%d%d, b:%d%d%d%d",
                     res_equal,res_b_bigger,res_a_bigger,a3_in,a2_in,a1_in,a0_in, b3_in,b2_in,b1_in,b0_in);
                end else
                if(i < j && res_equal == 0 && res_b_bigger == 1 &&  res_a_bigger == 0) begin
                    $display("Correct b_bigger!   res_equal:%d, res_b_bigger:%d, res_a_bigger:%d, a:%d%d%d%d, b:%d%d%d%d",
                     res_equal,res_b_bigger,res_a_bigger,a3_in,a2_in,a1_in,a0_in, b3_in,b2_in,b1_in,b0_in);
                end else
                if(i > j && res_equal == 0 && res_b_bigger == 0 &&  res_a_bigger == 1) begin
                    $display("Correct a_bigger!   res_equal:%d, res_b_bigger:%d, res_a_bigger:%d, a:%d%d%d%d, b:%d%d%d%d",
                     res_equal,res_b_bigger,res_a_bigger,a3_in,a2_in,a1_in,a0_in, b3_in,b2_in,b1_in,b0_in);
                end else begin
                    $display("TEST NOT PASSED!   res_equal:%d, res_b_bigger:%d, res_a_bigger:%d, a:%d%d%d%d, b:%d%d%d%d",
                     res_equal,res_b_bigger,res_a_bigger,a3_in,a2_in,a1_in,a0_in, b3_in,b2_in,b1_in,b0_in);
                end
             end
        end
     
        $stop;
    end
   

endmodule
