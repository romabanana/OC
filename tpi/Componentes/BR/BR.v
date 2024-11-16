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
integer i;

initial begin
    for (i = 0; i<32; i=i+1) begin
        mem[i] = 0;
    end
end

always @(posedge clk ) begin
    if(we)
    begin
        mem[a3] <= wd3;
    end
end

assign rd1 = mem[a1];
assign rd2 = mem[a2];
    
endmodule