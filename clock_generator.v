module clock_gen_tb;
reg clk;

initial begin
    clk = 0;
end
always begin
    #30 clk = 1;
    #10 clk = 0;
end
initial begin
    $monitor("Time=%0t | clk=%b", $time, clk);
    #200 $finish;
end
endmodule
