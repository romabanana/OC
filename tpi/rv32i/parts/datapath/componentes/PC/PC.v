// Contador de Programa.

module PC (
    input wire clk,
    input [31:0] pcNext,
    output [31:0] pc
);

reg [31:0] aux_pc;

// inicia en 0
initial begin
    aux_pc = 0;
end
    
always @(posedge clk) begin
    aux_pc <= pcNext;
end

assign pc = aux_pc;

endmodule