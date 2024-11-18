// Testbench_template
// Works...
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module UC_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[31:0] srcA;
reg[31:0] srcB;
reg[2:0] ALUControl;
wire[31:0] result;

UC UUT (
          .srcA(srcA),
          .srcB(srcB),
          .ALUControl(ALUControl),
          .result(result)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, UC_tb);

    srcA = 32'h00000002;
    srcB = 32'h00000001;

    #1
    ALUControl = 0;
    #1
    ALUControl = 1;
    #1
    ALUControl = 2;
    #1
    ALUControl = 3;
    #1
    ALUControl = 5;
   

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule