module stimulus;

initial begin
    $dumpfile("Alpha.vcd"); // 원하는 VCD 파일 이름
    $dumpvars(0, stimulus); // 또는 $dumpvars;로 전체 신호 기록
end
// 이거는 항상 있어야 하나보네
reg x,y,a,b,m;

initial begin
    m = 1'b0;
end

initial begin
    #5 a = 1'b1;
    #10 b = 1'b0;
end

initial begin
    #15  x = 1'b1;
    #25 y = 1'b0;
end

initial begin
    #50 $finish;
end

endmodule