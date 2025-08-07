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
