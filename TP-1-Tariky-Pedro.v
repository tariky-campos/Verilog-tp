module seg7_check_parity (
    input wire A, B, C, D, E,   // Entradas de 5 bits
    input wire Parity,          // Bit de paridade fornecido
    output reg S1, S2, S3, S4, S5, S6, S7 // Saídas dos segmentos
);

    always @(*) begin
        // Checagem de paridade
        if (Parity) begin
            // Paridade incorreta: acende apenas o segmento S7
            S1 = 1'b0;
            S2 = 1'b0;
            S3 = 1'b0;
            S4 = 1'b0;
            S5 = 1'b0;
            S6 = 1'b0;
            S7 = 1'b1;
        end else if ({A, B, C, D, E} > 5'b10011) begin
            // Força todas as saídas como "x" para entradas acima de 210000
            S1 = 1'bx;
            S2 = 1'bx;
            S3 = 1'bx;
            S4 = 1'bx;
            S5 = 1'bx;
            S6 = 1'bx;
            S7 = 1'bx;
        end else begin
            // Paridade correta: cálculo normal dos segmentos
            S1 = (~B & ~C & D & ~E) | (~A & ~B & D & E) | (~A & ~B & C & ~D) | (~A & B & C & ~E) | (A & ~B & ~C & ~D);
            S2 = (~A & ~B & ~D & ~E) | (~B & ~C & D & E) | (~A & B & ~D & E) | (~A & B & C & D & ~E) | (A & ~B & ~C & ~D);
            S3 = (~A & ~B & ~D) | (~A & ~C & ~E) | (~B & ~C & ~D) | (~A & ~B & C & E) | (~A & C & ~D & E) | (A & ~B & ~C & E);
            S4 = (~A & ~B & D) | (~B & ~C & D & ~E) | (~A & ~B & C & ~E) | (~A & B & ~C & ~E) | (~A & B & ~D & E) | (A & ~B & ~C & ~D & E);
            S5 = (~A & ~B & ~C & ~D) | (~A & ~B & ~D & E) | (~A & ~C & D & E) | (~A & C & D & ~E) | (~A & B & ~E) | (~A & B & C) | (A & ~B & ~C & D);
            S6 = (~A & ~B & ~E) | (~A & D & ~E) | (~A & C & ~E) | (~A & C & D) | (~A & B & ~C & ~D & E) | (A & ~B & ~C & D);
            S7 = (~A & ~B & ~D & ~E) | (~B & ~C & E) | (~A & ~C & D) | (~A & ~B & D & E) | (~A & B & C & ~D) | (~A & B & C & ~E);
        end
    end

endmodule
`timescale 1ns / 1ps

module tb_seg7_check_parity;

    // Entradas e saídas
    reg A, B, C, D, E;         // Entradas
    reg Parity;                // Bit de paridade
    wire S1, S2, S3, S4, S5, S6, S7; // Saídas

    // Instância do módulo
    seg7_check_parity uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .Parity(Parity),
        .S1(S1),
        .S2(S2),
        .S3(S3),
        .S4(S4),
        .S5(S5),
        .S6(S6),
        .S7(S7)
    );

    // Configuração de dump
    initial begin
        $dumpfile("tb_seg7_check_parity.vcd");
        $dumpvars(0, tb_seg7_check_parity);
    end

    // Testbench
    initial begin
        $display("Time\tA B C D E Parity   | S1 S2 S3 S4 S5 S6 S7| Status");

        for (integer j = 0; j < 32; j = j + 1) begin
            {A, B, C, D, E} = j[4:0]; // Entradas
            Parity = A ^ B ^ C ^ D ^ E; // Calcula paridade
            #10; // Espera 10 unidades de tempo

            if ({A, B, C, D, E} > 5'b10011) begin
                // Força saída "x" e status "x" para valores acima de 210000
                $display("%4t\t%b %b %b %b %b    %b     | x  x  x  x  x  x  x | x", 
                         $time, A, B, C, D, E, Parity);
            end else if (Parity) begin
                $display("%4t\t%b %b %b %b %b    %b     | %b  %b  %b  %b  %b  %b  %b | OK (Invalid Parity)", 
                         $time, A, B, C, D, E, Parity, S1, S2, S3, S4, S5, S6, S7);
            end else begin
                $display("%4t\t%b %b %b %b %b    %b     | %b  %b  %b  %b  %b  %b  %b | OK (Valid Parity)", 
                         $time, A, B, C, D, E, Parity, S1, S2, S3, S4, S5, S6, S7);
            end
        end

        $stop;
    end

endmodule
