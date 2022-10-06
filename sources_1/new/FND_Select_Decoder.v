`timescale 1ns / 1ps

module FND_Select_Decoder(
    input [1:0] i_digitSelect,
    input i_en,
    output [3:0] o_digit
    );

    reg [3:0] r_digit;

    assign o_digit = r_digit;  //  wire 타입 변수(메모리 기능 x)를 r_digit(메모리 기능 o)과 연결

    always @(i_digitSelect, i_en) begin  //  always @() : 항상 ()안을 바라보고 있다. ()안에 (, or) 둘다가능
        if (i_en) begin
            r_digit = 4'b1111;
        end
        else begin
            case (i_digitSelect)
                2'h0 : r_digit = 4'b1110;
                2'h1 : r_digit = 4'b1101;
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end
    end    
endmodule