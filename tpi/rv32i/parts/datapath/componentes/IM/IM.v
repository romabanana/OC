// Memoria de Instrucciones

module IM (
    //input [4:0] adressIM,
    
    input [29:0] adressIM, //pc shifteado
    output [31:0] inst
);

reg [31:0] imem [31:0];

initial begin

imem[0]   = 32'h00300413;
imem[1]   = 32'h00100493;
imem[2]   = 32'h01000913;
imem[3]  = 32'h009462b3;
imem[4]  = 32'h00947333;
imem[5]  = 32'h009403b3;
imem[6]  = 32'h40940e33;
imem[7]  = 32'h40848eb3;
imem[8]  = 32'h00942f33;
imem[9]  = 32'h0084afb3;
imem[10]  = 32'h01d4afb3;
imem[11]  = 32'h00100293;
imem[12]  = 32'h00000313;
imem[13]  = 32'h01228863;
imem[14]  = 32'h005282b3;
imem[15]  = 32'h00130313;
imem[16]  = 32'hff5ff06f;
imem[17]  = 32'h000004b3;
imem[18]  = 32'h00000293;
imem[19]  = 32'h00a00313;
imem[20]  = 32'h00628863;
imem[21]  = 32'h008484b3;
imem[22]  = 32'h00128293;
imem[23]  = 32'hff5ff06f;
imem[24]  = 32'h00802023;
imem[25] = 32'h00902223;
imem[26] = 32'h01202423;
imem[27] = 32'h00002283;
imem[28] = 32'h00402303;
imem[29] = 32'h00802383;

end

assign inst = imem[adressIM];  
    
endmodule
