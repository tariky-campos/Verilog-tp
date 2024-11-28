module test;
    initial begin
        $display("Hello, Verilog!o");
        $finish;
    end
endmodule
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b1; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; e = 1'b0; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; e = 1'b0; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; e = 1'b1; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; e = 1'b0; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; e = 1'b1; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; e = 1'b1; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; e = 1'b0; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b0; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; e = 1'b1; bp = 1'b1; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; e = 1'b0; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; e = 1'b1; bp = 1'b0; #10; $display("%b %b %b %b %b %b | %b", a, b, c, d, e, bp, s);