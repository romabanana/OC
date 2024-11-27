// Banco de Registros
module BR (
    input wire clk,
    input [4:0] a1, 
    input [4:0] a2,
    input [4:0] a3,
    input [31:0] wd3,
    input wire we,
    output [31:0] rd1,
    output [31:0] rd2
    );

reg [31:0] mem [31:0];
initial begin
  mem[0] = 0; //zero
end

always @(posedge clk ) begin
    if(we)
    begin
      if(a3!=0) //zero no se puede sobrescribir
        begin
          mem[a3] <= wd3;
        end
    end
end

assign rd1 = mem[a1];
assign rd2 = mem[a2];
    
endmodule
  