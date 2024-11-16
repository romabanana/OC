// Decodificador de la ALU
/*
    ALUop   funct3  inst    ALUcontrol
    00      x       lw,sw   000(add)
    01      x       beq     001(sub)
    10      000     add     000(add)
            000     sub     001(sub)
            010     slt     101(slt)
            110     or      011(or)
            111     and     010(and)

*/
module aluDeco (
    input op, //op[5]
    input wire f7,
    input [2:0] f3,
    input [1:0] aluOp,
    output [2:0] ALUControl
);

reg [2:0] aux_ALUControl;

always @(*) begin
    case (aluOp)
        0:
            begin
                aux_ALUControl = 3'b000; //add
            end 
        1:
            begin
                aux_ALUControl = 3'b001; //sub
            end
        2: 
            //
            begin
                case (f3)
                    0:
                        begin
                            //subs if 11, else add
                            aux_ALUControl = (f7 & op) ? 3'b001 : 3'b000; 
                        end
                    2:
                        begin
                            aux_ALUControl = 3'b101; //slt
                        end
                    6:
                        begin
                            aux_ALUControl = 3'b011; //or
                        end
                    7:
                        begin   
                            aux_ALUControl = 3'b010; //and
                        end
                    default: 
                        begin
                            aux_ALUControl = 3'bxxx; //fail..
                        end
                endcase
            end
        default: 
            begin
                aux_ALUControl = 3'bxxx; //fail..
            end
    endcase
end

assign ALUControl = aux_ALUControl;

endmodule