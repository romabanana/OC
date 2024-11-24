// Contador de Programa.

module PC (
    input wire clk,
    input wire reset,
    input [31:0] pcNext,
    output [31:0] pc
);

reg [31:0] aux_pc;

// inicia en 0
initial begin
    aux_pc = 0;
end
    
always @(posedge clk) begin
  if (reset) 
    begin
      aux_pc = 0;
    end
  else
    begin
      aux_pc <= pcNext;
    end
  
end

assign pc = aux_pc;

endmodule
