// Memoria de Instrucciones

module IM (
    //input [4:0] adressIM,
    
    input [4:0] adressIM, //pc
    output [31:0] inst
);

reg [31:0] imem [31:0];

initial begin
  imem[0] = 32'h00002303;
  imem[4] = 32'h00602223;
  imem[8] = 32'h00402383;
  imem[12] = 32'h00638333;
  imem[16] = 32'h00602423;

end

assign inst = imem[adressIM];
    
endmodule