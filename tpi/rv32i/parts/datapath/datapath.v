`include "parts/datapath/componentes/Mux2x1/Mux2x1.v"
`include "parts/datapath/componentes/PC/PC.v"
`include "parts/datapath/componentes/Adder/Adder.v"
`include "parts/datapath/componentes/IM/IM.v"
`include "parts/datapath/componentes/BR/BR.v"
`include "parts/datapath/componentes/SE/SE.v"
`include "parts/datapath/componentes/ALU/ALU.v"
`include "parts/datapath/componentes/DM/DM.v"
`include "parts/datapath/componentes/Mux4x1/Mux4x1.v"



module datapath (
    ///clk
    input wire clk,
    
    //inputs
    input wire pcSrc,
    input [1:0] resSrc,
    input wire memWrite,
    input [2:0] ALUControl,
    input aluSrc,
    input [1:0] inmSrc,
    input wire regWrite,
    input wire branch,
    
    ///outputs (UC)
    output wire f7,
    output [2:0] f3,
    output [6:0] op,
    output wire zero
    
);

//wires
wire [31:0] pcPlus4;
wire [31:0] pcTarget;
wire [31:0] pcNext;

wire [31:0] pc;

wire [31:0] inst;

wire[31:0] result; //wd3
wire[31:0] rd1; //srcA
wire[31:0] rd2; //writeData

wire[31:0] inmExt;

wire[31:0] srcB;

wire[31:0] ALUResult;
wire aux_zero;

wire[31:0] ReadData;

// Constante cuatro del adder

wire [2:0]four = 4;

//Mux del pc

Mux2x1 muxPcSrc(
    .e1(pcPlus4),
    .e2(pcTarget),
    .sel(pcSrc),
    .salMux(pcNext)
);

//Contador de Programa

PC programCounter(
    .clk(clk),
    .pcNext(pcNext),
    .pc(pc)
);

//Adder del pc

Adder apc(
    .op1(pc),
    .op2(four),
    .res(pcPlus4)
);

//Memoria de Intrucciones

IM instructionMemory(
    .adressIM(pc),
    .inst(inst)
);

//Banco de Registros

BR registerBank(
    .clk(clk),
    .a1(inst[19:15]),
    .a2(inst[24:20]),
    .a3(inst[11:7]),
    .wd3(result),
    .we(regWrite),
    .rd1(rd1),
    .rd2(rd2)
);

//Extension de Signo

SE signExtension(
    .inm(inst),
    .src(inmSrc),
    .inmExt(inmExt)
);

//Adder de branch

Adder ab(
    .op1(pc),
    .op2(inmExt),
    .res(pcTarget)
);

//Mux del alu

Mux2x1 aluMux(
    .e1(rd2),
    .e2(inmExt),
    .sel(aluSrc),
    .salMux(srcB)
);

//ALU

ALU arithmeticLogicUnit(
    .srcA(rd1),
    .srcB(srcB),
    .ALUControl(ALUControl),
    .result(ALUResult),
    .zero(aux_zero)
);

//Memoria de Datos

DM dataMemory(
    .clk(clk),
    .addresDM(ALUResult),
    .wd(rd2),
    .we(memWrite),
    .rd(ReadData) 
);

//Result Mux
//is it wrong?
Mux4x1 resMux(
//    .e1(ReadData),
//    .e2(ALUResult),
    .e1(ALUResult),
    .e2(ReadData),
    .e3(pcPlus4),
    .sel(resSrc),
    .salMux(result)
);

//

assign f7 = inst[30];  //5 de [31:25]
assign f3 = inst[14:12];
assign op = inst[6:0];
assign zero = aux_zero;
    
endmodule