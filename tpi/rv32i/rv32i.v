`include "parts/datapath/datapath.v"
`include "parts/UC/UC.v"

/*
    Correcciones:
        - Se agrego reset a PC.
        - Se agrego pcInput a PC
            (ya se hardcodea incializado en 0) 
        - Se eliminaron códigos de test de la IM
        - Se "elimino" la division por 4.
            (recibe el pc con un shift, es decir se divide por 4)
        - Se eliminaron las iniciliaziciones de las memorias.
        - Se inicializa el registro zero en 0.
        - Se inhibe la escritura del registro zero.
        - Ahora la entrada de SE es de 25 bits.
            (se descarta el campo op).
        - Se elimino el estado default indenido en el AluDeco.
*/
module rv32i (
    //clk
    input wire clk,
    input wire reset,
    input [31:0] pc
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
    .pcInput(pc),
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
