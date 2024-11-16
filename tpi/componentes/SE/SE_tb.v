// Testbench_template
// no test.. I hope this works...
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module SE_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[4:0] adress;
wire[31:0] inst_out;

SE UUT (
          .adressIM(adress),
          .inst(inst_out)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, SE_tb);

    #1
    adress = 17;
    #1

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule