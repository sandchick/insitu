`timescale 1ns/1ps

module tb_work();

reg clk;

initial begin
    clk = 0 ;
end

always # 1 clk = ~clk;
//always #100 wlord = wlord + 10;

glbl glbl();
wire txd;
wire LED;

aging_sensor uaging_sensor (
    .clk (clk)
    ,.txd (txd)
    ,.LED (LED)
);

endmodule