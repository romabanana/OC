`include "parts/datapath/datapath.v"
`include "parts/UC/UC.v"


module rv32i (
    //clk
    input wire clk,
    input wire reset
);

////wires
//UC->DP
wire f7;
wire [2:0] f3;
wire [6:0] op;
wire zero;

//UC->DP
wire pcSrc;
wire [1:0] resSrc;
wire memWrite;
wire [2:0] ALUControl;
wire aluSrc;
wire [1:0] inmSrc;
wire regWrite;
wire branch;

datapath dataPath(
    .clk(clk),
    .reset(reset),
    //inputs
    .pcSrc(pcSrc),
    .resSrc(resSrc),
    .memWrite(memWrite),
    .ALUControl(ALUControl),
    .aluSrc(aluSrc),
    .inmSrc(inmSrc),
    .regWrite(regWrite),
    .branch(branch),
    //outputs
    .f7(f7),
    .f3(f3),
    .op(op),
    .zero(zero)
);
UC controlUnit(
    
    //inputs
    .f7(f7),
    .f3(f3),
    .op(op),
    .zero(zero),
    //outputs
    .pcSrc(pcSrc),
    .resSrc(resSrc),
    .memWrite(memWrite),
    .ALUControl(ALUControl),
    .aluSrc(aluSrc),
    .inmSrc(inmSrc),
    .regWrite(regWrite),
    .branch(branch)
);


endmodule
