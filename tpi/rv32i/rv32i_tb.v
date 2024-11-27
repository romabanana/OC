// Testbench_template
// Works...
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module rv32i_tb();

parameter DURATION = 100;

reg clk = 0;
always #0.5 clk = ~clk;

reg reset;
reg [31:0] pc;

rv32i UUT (
          .clk(clk),
          .reset(reset),
          .pc(pc)
        );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, rv32i_tb);
  pc = 0;
  reset = 1;
  #1
  reset = 0;
  
   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule
