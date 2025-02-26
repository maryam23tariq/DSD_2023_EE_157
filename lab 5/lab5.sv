module lab5 (
    output logic A, B, C, D, E, F, G, AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7,
    input logic a, b, c, d, s1, s2, s3
);
    assign A = (~a & b & ~c & ~d) | (~a & ~b & ~c & d) | (a & b & ~c & d) | (a & ~b & c & d);
    assign B = (~a & b & ~c & d) | (a & b & ~d) | (a & c & d) | (b & c & ~d);
    assign C = (~a & ~b & c & ~d) | (a & b & c) | (a & b & ~d);
    assign D = (~a & b & ~c & ~d) | (~a & ~b & ~c & d) | (a & ~b & c & ~d) | (b & c & d);
    assign E = (~a & d) | (~b & ~c & d) | (~a & b & ~c);
    assign F = (~a & ~b & d) | (~a & c & d) | (~a & ~b & c) | (a & b & ~c & d);
    assign G = (a & b & ~c & ~d) | (~a & b & c & d) | (~a & ~b & ~c);
    
    assign AN0 = s1 | s2 | s3;
    assign AN1 = s1 | s2 | ~s3;
    assign AN2 = s1 | ~s2 | s3;
    assign AN3 = s1 | ~s2 | ~s3;
    assign AN4 = ~s1 | s2 | s3;
    assign AN5 = ~s1 | s2 | ~s3;
    assign AN6 = ~s1 | ~s2 | s3;
    assign AN7 = ~s1 | ~s2 | ~s3;
endmodule