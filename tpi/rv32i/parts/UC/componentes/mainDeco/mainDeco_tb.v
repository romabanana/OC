// Testbench_template
// GOOD :D
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module mainDeco_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[6:0] op;
wire branch;
wire[1:0] resSrc;
wire memWrite;
wire aluSrc;
wire[1:0] inmSrc;
wire regWrite;
wire[1:0] aluOp;

mainDeco UUT (
        .op(op),
        .branch(branch),
        .resSrc(resSrc),
        .memWrite(memWrite),
        .aluSrc(aluSrc),
        .inmSrc(inmSrc),
        .regWrite(regWrite),
        .aluOp(aluOp)
);

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, mainDeco_tb);


    #1
    op = 3; //lw
    #1
    op = 35; //sw
    #1
    op = 51; //R
    #1
    op = 99; //beq
    

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule