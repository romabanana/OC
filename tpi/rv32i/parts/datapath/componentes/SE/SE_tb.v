// Testbench_template
// Works
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module SE_tb();

parameter DURATION = 10;

reg clk = 0;
always #0.5 clk = ~clk;

reg[24:0] inm;
reg [1:0] src;
wire[31:0] inmExt;

SE UUT (
          .inm(inm),
          .src(src),
          .inmExt(inmExt)
         );

integer i;

initial begin

  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, SE_tb);

    inm = 32'h01940093; //ADDI x5, x0, 100  
    src = 0;
    
    #1
    inm = 32'h00502423; //SW x5, 4(x0) 
    src = 1;
    
    #1
    inm = 32'h00028063; //BEQ x1, x2, 16 
    src = 2;
    
    #1
    inm = 32'h0000106F; //JAL x1, 1024  
    src = 3;

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule