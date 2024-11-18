// Testbench_template
// Worked
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module aluDeco_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg op;
reg f7;
reg[2:0] f3;
reg[1:0] aluOp;
wire[2:0] ALUControl;

aluDeco UUT (
          .op(op),
          .f7(f7),
          .f3(f3),
          .aluOp(aluOp),
          .ALUControl(ALUControl)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, aluDeco_tb);

    f7 = 1;
    op = 1;

    #1
    aluOp = 0;
    #1
    aluOp = 1;
    #1
    aluOp = 2;
    f3 = 0;
    
    #1
    aluOp = 2;
    f3 = 0;
    f7 = 0;

    #1
    aluOp = 2;
    f3 = 2;
    #1
    aluOp = 2;
    f3 = 6;
    #1
    aluOp = 2;
    f3 = 7;
    #1
    aluOp = 2;
    f3 = 1;
    #1
    aluOp = 3;
    #(DURATION) $display("End of simulation");
  $finish;
end

endmodule