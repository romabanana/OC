// Mux 2 1
// 0 e1
// 1 e2
module Mux2x1 (
    input [31:0] e1,
    input [31:0] e2,
    input wire sel,
    output [31:0] salMux
);

reg [31:0] aux;

always @(*) begin
    aux = (sel) ? e2 : e1;
end

assign salMux = aux;

    
endmodule