// Testbench_template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module PC_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[31:0] pcNext;
reg reset;
wire[31:0] pc;


PC UUT (
          .clk(clk),
          .reset(reset),
          .pcNext(pcNext),
          .pc(pc)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, PC_tb);

  for (i=0; i<10; i=i+1)
  begin
    reset = 0;
    $display ("Current loop # %0d", i);
    $display ("Current loop # %0b", i);
    #1
    pcNext = i;

  end

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule