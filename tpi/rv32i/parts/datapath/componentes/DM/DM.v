// Memoria de Datos
module DM (
    input wire clk,
    //input [4:0] addresDM,
    input [31:0] addresDM,
    
    input [31:0] wd,
    input wire we,
    output [31:0] rd
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
        mem[addresDM] <= wd;
    end
end

assign rd = mem[addresDM];

endmodule