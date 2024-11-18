// Testbench_template
// no test.. I hope this works...
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module Adder_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[31:0] op1;
reg[31:0] op2;
wire[31:0] res;

Adder UUT (
          .op1(op1),
          .op2(op2),
          .res(res)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, Adder_tb);

    op1 = 32'h00000002;
    op2 = 32'h00000001;
    #1
    op2 = ~op2 + 1;
   

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule