`timescale 100ns/1ns
module Tb_net1;
wire wand_y, wor_y;
reg a,b;


module wand_test(input a, input b, output y);
wand y;
    assign y = a;
    assign y = b;
endmodule

module wor_test(input a, input b, output y);
wor y;
    assign y = a;
    assign y = b;
endmodule


wand_test U1(.a(a), .b(b), .y(wand_y) );
wor_test U2(.a(a), .b(b), .y(wor_y) );

initial begin
    a=0; b=0; #200;
    a=0; b=1; #200;
    a=1; b=0; #200;
    a=1; b=1; #200;
end

endmodule 




// 상승 에지 플립플롭 (D Flip-Flop)
/*
module psedgeff (
    input clk,
    input d,
    output reg q
);

    initial begin
        $dumpfile("Delta.vcd");
        $dumpvars(0, psedgeff);
    end

    always @(posedge clk)
        q <= d;

endmodule;
*/
/*
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    initial begin
        $dumpfile("Delta.vcd"); // 원하는 VCD 파일 이름
        $dumpvars(0, top_module); // 또는 $dumpvars;로 전체 신호 기록
    end

    assign   out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ { {5{a,b,c,d,e}} };

endmodule
*/

