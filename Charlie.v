`timescale 100ns/1ns
/*
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    initial begin
        $dumpfile("Bravo.vcd"); // 원하는 VCD 파일 이름
        $dumpvars(0, top_module); // 또는 $dumpvars;로 전체 신호 기록
    end
    
    assign p1y = (p1a & p1b & p1c) || (p1d & p1e & p1f);
    assign p2y = (p2a & p2b) || (p2c & p2d); 

endmodule
*/
/*
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    
    initial begin
        $dumpfile("Charlie.vcd"); // 원하는 VCD 파일 이름
        $dumpvars(0, top_module); // 또는 $dumpvars;로 전체 신호 기록
    end
    // assign { ... } = { ... };
    wire [31:0] concat = {a, b, c, d, e, f, 2'b11};
    assign w = concat[31:24];
    assign x = concat[23:16];
    assign y = concat[15:8];
     assign z = concat[7:0];
    // z가 이상한데? -> 해결

endmodule
*/
/*
module top_module( 
    input [7:0] in,
    output [7:0] out
);

    initial begin
        $dumpfile("Charlie.vcd"); // 원하는 VCD 파일 이름
        $dumpvars(0, top_module); // 또는 $dumpvars;로 전체 신호 기록
    end

    always @(*) begin	
		for (int i=0; i<8; i++)
			out[i] = in[8-i-1];
	end


endmodule
*/