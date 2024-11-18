// Testbench_template
// Works
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module Mux4x1_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[31:0] e1;
reg[31:0] e2;
reg[31:0] e3;
reg [1:0] sel;
wire[31:0] salMux;

Mux4x1 UUT (
          .e1(e1),
          .e2(e2),
          .e3(e3),
          .sel(sel),
          .salMux(salMux)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, Mux4x1_tb);

    e1 = 1;
    e2 = 2;
    e3 = 3;

    sel = 0;
    #1
    sel = 1;
    #1
    sel = 2;
    #1
    sel = 3;

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule