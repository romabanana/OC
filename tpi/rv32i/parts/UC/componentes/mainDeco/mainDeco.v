// Decodificador principal

/*
    <op> ins 
    3   lw
    35  sw
    51  R-type
    99  beq
*/
module mainDeco (
    input [6:0] op,
    output wire branch,
    output [1:0] resSrc,
    output wire memWrite,
    output wire aluSrc,
    output [1:0] inmSrc,
    output wire regWrite,
    output [1:0] aluOp
);

reg aux_branch;
reg [1:0] aux_resSrc;
reg aux_memWrite;
reg aux_aluSrc;
reg [1:0] aux_inmSrc;
reg aux_regWrite;
reg [1:0] aux_aluOp;

always @(*) begin
    case (op)
        3: //lw
            begin
                aux_regWrite = 1;
                aux_inmSrc = 00;
                aux_aluSrc = 1;
                aux_memWrite = 0;
                aux_resSrc = 1;
                aux_branch = 0;
                aux_aluOp = 2'b00;
            end
        35: //sw
            begin
                aux_regWrite = 0;
                aux_inmSrc = 2'b01;
                aux_aluSrc = 1;
                aux_memWrite = 1;
                aux_resSrc = 1'bx;
                aux_branch = 0;
                aux_aluOp = 2'b00;
            end
        51: //R
            begin
                aux_regWrite = 1;
                aux_inmSrc = 2'bx;
                aux_aluSrc = 0;
                aux_memWrite = 0;
                aux_resSrc = 0;
                aux_branch = 0;
                aux_aluOp = 2;
            end
        99: //beq
            begin
                aux_regWrite = 0;
                aux_inmSrc = 2'b10;
                aux_aluSrc = 0;
                aux_memWrite = 0;
                aux_resSrc = 1'bx;
                aux_branch = 1;
                aux_aluOp = 2'b01;
            end
        19: //I
            begin
                aux_regWrite = 1;
                aux_inmSrc = 2'b00;
                aux_aluSrc = 1;
                aux_memWrite = 0;
                aux_resSrc = 1'b0;
                aux_branch = 0;
                aux_aluOp = 2'b10;
            end
        111: //j
            begin
                aux_regWrite = 1; //1
                aux_inmSrc = 2'b11;
                aux_aluSrc = 1'bx;
                aux_memWrite = 0;
                aux_resSrc = 2'b10;
                aux_branch = 0;
                aux_aluOp = 2'bxx;
            end
        default:
           begin
                //aux_regWrite = 1'bx;
                //aux_inmSrc = 2'bxx;
                //aux_aluSrc = 1'bx;
                //aux_memWrite = 1'bx;
                //aux_resSrc = 1'bx;
                //aux_branch = 1'bx;
                //aux_aluOp = 2'bxx;
                aux_regWrite = 0;
                aux_inmSrc = 2'b00;
                aux_aluSrc = 0;
                aux_memWrite = 0;
                aux_resSrc = 2'b00;
                aux_branch = 0;
                aux_aluOp = 2'b00;
            end 
    endcase
end

assign branch = aux_branch;
assign resSrc = aux_resSrc;
assign memWrite = aux_memWrite;
assign aluSrc = aux_aluSrc;
assign inmSrc = aux_inmSrc;
assign regWrite = aux_regWrite;
assign aluOp = aux_aluOp;

    
endmodule