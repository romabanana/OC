// Extension de Signo
//  I (31:20),
// s (31:25, 11:7),
// b (31, 30:25, 11:8, 7),
// u(31:12)
// j (31, 30:21, 20, 12:19)


module SE (
    // no clk??
    input [24:0] inm,
    input [1:0] src,
    output [31:0] inmExt
);

reg[31:0] aux_inm;

always @(*) begin
    case (src)
        2'b00: //  I (31:20),
            begin
                aux_inm = {{20{inm[24]}}, inm[24:13]};
            end 
        2'b01: // S (31:25 (7), 11:7 (5))
            begin
                aux_inm ={{20{inm[24]}},inm[24:18], inm[4:0]};
            end
        2'b10: // B (31 (1), 30:25(6), 11:8, 0)
            begin
                aux_inm = {{19{inm[24]}}, inm[24], inm[0], inm[23:18], inm[4:1], 1'b0};   
            end
        2'b11:
            begin //J (31(1), 30:21(11), 20(12), 12:19(20))
                aux_inm = {{12{inm[24]}},inm[24], inm[12:5],inm[13],inm[23:14], 1'b0};
            end
        default: 
            begin
               aux_inm = 0; //32'bx sería una señal desconocida util para debuggear
            end
    endcase
end

assign inmExt = aux_inm; 
endmodule   