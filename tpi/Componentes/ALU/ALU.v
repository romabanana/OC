module ALU (
    input [31:0] srcA,
    input [31:0] srcB,
    input [2:0] ALUControl,
    output [31:0] result
);

reg [31:0] aux;

initial begin
    aux = 0;
end

always @(*) begin
    case (ALUControl)
        3'b000:
            begin
                aux = srcA + srcB;    
            end 
        3'b001:
            begin
               aux = srcA - srcB; 
            end
        3'b010:
            begin
                aux = srcA & srcB;
            end
        3'b011:
            begin
                aux = srcA | srcB;
            end
        3'b010:
            begin
                aux = (srcA < srcB) ? 1 : 0;
            end    
        default: 
            begin
                aux = 32'bx;
            end
    endcase
end

assign result = aux;

endmodule