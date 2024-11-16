// Memoria de Instrucciones

module IM (
    input [4:0] adressIM,
    output [31:0] inst
);

reg [31:0] imem [31:0];

initial begin
  imem[17] = 1;  
end

assign inst = imem[adressIM];
    
endmodule