// Testbench_template
// Works...
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module rv32i_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;



rv32i UUT (
          .clk(clk)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, rv32i_tb);


   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule