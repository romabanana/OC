`include "../mainDeco/mainDeco.v"
`include "../aluDeco/aluDeco.v"

// Unidad de Control;
module UC (
    input wire f7,
    input [2:0] f3,
    input [6:0] op,
    input wire zero,
    // output [0:9] salUC
    output wire pcSrc,
    output wire resSrc,
    output wire memWrite,
    output [2:0] ALUControl,
    output aluSrc,
    output [1:0] inmSrc,
    output wire regWrite,
    output wire branch
);

reg aux_pcSrc = 0;
wire [1:0] aluOp = 0;

mainDeco MD(
    .op(op),
    .branch(branch),
    .resSrc(resSrc), //warning... expectes 2bits gots 1...
                    //it never goes beyond 1 bit tho...
    .memWrite(memWrite),
    .aluSrc(aluSrc),
    .inmSrc(inmSrc),
    .regWrite(regWrite),
    .aluOp(aluOp)
);  

aluDeco AD(
    .op(op[5]),
    .f7(f7),
    .f3(f3),
    .aluOp(aluOp),
    .ALUControl(ALUControl)
);

always @(*) begin
    aux_pcSrc = zero & branch;
end

assign pcSrc = aux_pcSrc;

endmodule