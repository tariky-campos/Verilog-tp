module seg7_parity_checker (
    input wire [5:0] code,         // 5 bits para o caractere + 1 bit de paridade
    output reg [6:0] segments      // Saída do display de 7 segmentos
);

    // Verificação de paridade
    wire parity_calculated = ^code[5:1]; // XOR dos 5 bits do caractere
    wire parity_valid = (parity_calculated == code[0]); // Verifica paridade

    always @(*) begin
        if (!parity_valid) begin
            // Paridade inválida: Exibe caractere especial (ex: "E" para erro)
            segments = 7'b0111100; // Representação do "E" no display
        end else begin
            case (code[5:1])
                5'b00000: segments = 7'b1110111; // A
                5'b00001: segments = 7'b0011111; // B
                5'b00010: segments = 7'b1001110; // C
                5'b00011: segments = 7'b0111101; // D
                5'b00100: segments = 7'b1001111; // E
                5'b00101: segments = 7'b1000111; // F
                5'b00110: segments = 7'b1011110; // G
                5'b00111: segments = 7'b0110111; // H
                5'b01000: segments = 7'b0110000; // I
                5'b01001: segments = 7'b0111100; // J
                5'b01010: segments = 7'b0000111; // K
                5'b01011: segments = 7'b0011101; // L
                5'b01100: segments = 7'b1110110; // M
                5'b01101: segments = 7'b1110100; // N
                5'b01110: segments = 7'b1111110; // O
                5'b01111: segments = 7'b1100111; // P
                5'b10000: segments = 7'b1110011; // Q
                5'b10001: segments = 7'b1010100; // R
                5'b10010: segments = 7'b1000110; // S
                5'b10011: segments = 7'b1011111; // T
                default: segments = 7'b0000000;  // Apaga o display para entradas inválidas
            endcase
        end
    end

endmodule
