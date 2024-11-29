module tb_seg7_parity_checker;

    reg [5:0] code;                // Entrada de 6 bits (5 bits + paridade)
    wire [6:0] segments;           // Saída do display

    seg7_parity_checker uut (
        .code(code),
        .segments(segments)
    );

    initial begin
        $dumpfile("tb_seg7_parity_checker.vcd");
        $dumpvars(0, tb_seg7_parity_checker);

        // Testa entradas válidas
        code = 6'b000001; #10; // A
        code = 6'b000101; #10; // B
        code = 6'b000011; #10; // C

        // Testa erro de paridade
        code = 6'b000000; #10; // Paridade incorreta

        // Testa entrada fora do intervalo
        code = 6'b101010; #10; // Fora do intervalo

        $finish;
    end

endmodule
