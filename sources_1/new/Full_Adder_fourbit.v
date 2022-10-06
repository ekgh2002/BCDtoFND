`timescale 1ns / 1ps


module Full_Adder_fourbit(
    input [3:0] i_a, i_b, //[3:0] 상위비트가 왼쪽, i_a[3], i_a[2], i_a[1], i_a[0]
    input i_cin,
    output [3:0] i_sum,
    output o_carry
    );

    wire w_carry_0, w_carry_1, w_carry_2;

    Full_Adder FA_0(
    .i_a(i_a[0]),
    .i_b(i_b[0]),
    .i_c(i_cin),
    .i_sum(i_sum[0]),
    .o_carry(w_carry_0)
    );

    Full_Adder FA_1(
    .i_a(i_a[1]),
    .i_b(i_b[1]),
    .i_c(w_carry_0),
    .i_sum(i_sum[1]),
    .o_carry(w_carry_1)
    );

    Full_Adder FA_2(
    .i_a(i_a[2]),
    .i_b(i_b[2]),
    .i_c(w_carry_1),
    .i_sum(i_sum[2]),
    .o_carry(w_carry_2)
    );

    Full_Adder FA_3(
    .i_a(i_a[3]),
    .i_b(i_b[3]),
    .i_c(w_carry_2),
    .i_sum(i_sum[3]),
    .o_carry(o_carry)
    );

    
endmodule