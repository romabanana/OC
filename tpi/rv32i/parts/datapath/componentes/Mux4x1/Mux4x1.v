// Mux 2 1
// 0 e1
// 1 e2
module Mux4x1 (
    input [31:0] e1,
    input [31:0] e2,
    input [31:0] e3,
    input [1:0] sel,
    output [31:0] salMux
);

reg [31:0] aux;

always @(*) begin
    case (sel)
        0:
            begin
                aux = e1;        
            end
        1:
            begin
                aux = e2;        
            end 
        2:
            begin
                aux = e3;        
            end             
        default: 
            begin
               aux = 31'bx; 
            end
    endcase
end

assign salMux = aux;
    
endmodule