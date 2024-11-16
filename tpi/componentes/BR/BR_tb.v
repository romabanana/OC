// Testbench_template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module BR_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[4:0] a1;
reg[4:0] a2;
reg[4:0] a3;
reg[31:0] wd3;
reg we;
wire [31:0] rd1;
wire [31:0] rd2;

BR UUT (
          .clk(clk),
          .a1(a1),
          .a2(a2),
          .a3(a3),
          .wd3(wd3),
          .we(we),
          .rd1(rd1),
          .rd2(rd2)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, BR_tb);

    we = 0;
    a1 = 3;
    a2 = 4;
    #1
    a3 = 3;
    wd3 = 123;
    #1
    we = 1;
    #1
    a3 = 4;
    #1
    we = 0;
    a3 = 2;
    
    
   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule