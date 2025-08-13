/*module top_module (input a, input b, output out);

mod_a inss (.in1(a), .in2(b), .out(out));

endmodule
*/
/*
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

//mod_a inss (.out(out1), .out(out2), .in(a), .in(b), .in(c), .in(d))
mod_a inss (out1, out2, a,b,c,d);
endmodule
*/
/*
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

mod_a inss (.out1(out1), .out2(out2), .in1(a), .in2(b), .in3(c), .in4(d));
//mod_a inss (out1, out2, a,b,c,d);
endmodule
*/
/*
module top_module ( 
    input clk, 
    input d, 
    output q 
    );
wire a1, a2;

my_dff ins1 (.clk(clk), .d(d), .q(a1));
my_dff ins2 (.clk(clk), .d(a1), .q(a2));
my_dff ins3 (.clk(clk), .d(a2), .q(q));

endmodule
*/
/*
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

wire [7:0] a1,a2,a3;

my_dff8 ins1 (.clk(clk), .d(d), .q(a1));
my_dff8 ins2 (.clk(clk), .d(a1), .q(a2));
my_dff8 ins3 (.clk(clk), .d(a2), .q(a3));

always @(*)
begin
    if(sel == 0)
        q = d;
    else if(sel ==1)
        q = a1;
    else if(sel ==2)
        q = a2;
    else if(sel ==3)
        q = a3;
end


endmodule

*/
/*

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire add1_cout, add2_cout;

add16 ins1 (.a(a[15:0]), .b(b[15:0]), .cin(0) , .sum(sum[15:0]) , .cout(add1_cout));

add16 ins2 (.a(a[31:16]), .b(b[31:16]), .cin(add1_cout) , .sum(sum[31:16]) ,.cout(add2_cout));

endmodule
*/


module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire carry;  

    add16 inst1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),      
        .sum(sum[15:0]),
        .cout(carry)
    );

    add16 inst2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry),     // 이전 덧셈기의 carry를 연결
        .sum(sum[31:16]),
        .cout()          // 최종 carry는 무시 가능
    );

endmodule


module add1 (
    input a, b, cin,
    output sum, cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

