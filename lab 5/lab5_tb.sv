module lab5_bhv_tb;

    logic a, b, c, d;    
    logic s1, s2, s3;   
    logic A, B, C, D, E, F, G;
    logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7; 

    localparam period = 10; 
    
    lab5_bhv uut (
        .a(a), .b(b), .c(c), .d(d),
        .s1(s1), .s2(s2), .s3(s3),
        .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G),
        .AN0(AN0), .AN1(AN1), .AN2(AN2), .AN3(AN3),
        .AN4(AN4), .AN5(AN5), .AN6(AN6), .AN7(AN7)
    );

    initial begin
        a = 0; b = 0; c = 0; d = 0; s1 = 0; s2 = 0; s3 = 0;
        #period;
        a = 0; b = 0; c = 0; d = 1; s1 = 0; s2 = 0; s3 = 1; 
        #period;
        a = 0; b = 0; c = 1; d = 0; s1 = 0; s2 = 1; s3 = 0; 
        #period;
        a = 0; b = 0; c = 1; d = 1; s1 = 0; s2 = 1; s3 = 1; 
        #period;
        a = 0; b = 1; c = 0; d = 0; s1 = 1; s2 = 0; s3 = 0; 
        #period;
        a = 0; b = 1; c = 0; d = 1; s1 = 1; s2 = 0; s3 = 1; 
        #period;
        a = 0; b = 1; c = 1; d = 0; s1 = 1; s2 = 1; s3 = 0; 
        #period;
        a = 0; b = 1; c = 1; d = 1; s1 = 1; s2 = 1; s3 = 1; 
        #period;
        a = 1; b = 0; c = 0; d = 0; s1 = 0; s2 = 0; s3 = 0; 
        #period;
        a = 1; b = 0; c = 0; d = 1; s1 = 0; s2 = 0; s3 = 1; 
        #period;
        a = 1; b = 0; c = 1; d = 0; s1 = 0; s2 = 1; s3 = 0; 
        #period;
        a = 1; b = 0; c = 1; d = 1; s1 = 0; s2 = 1; s3 = 1; 
        #period;
        a = 1; b = 1; c = 0; d = 0; s1 = 1; s2 = 0; s3 = 0; 
        #period;
        a = 1; b = 1; c = 0; d = 1; s1 = 1; s2 = 0; s3 = 1; 
        #period;
        a = 1; b = 1; c = 1; d = 0; s1 = 1; s2 = 1; s3 = 0; 
        #period;
        a = 1; b = 1; c = 1; d = 1; s1 = 1; s2 = 1; s3 = 1; 
        #period;
        $stop;
    end 

    initial begin
        $monitor("a=%b, b=%b, c=%b, d=%b, s1=%b, s2=%b, s3=%b, A=%b, B=%b, C=%b, D=%b, E=%b, F=%b, G=%b, AN0=%b, AN1=%b, AN2=%b, AN3=%b, AN4=%b, AN5=%b, AN6=%b, AN7=%b", 
                 a, b, c, d, s1, s2, s3, A, B, C, D, E, F, G, AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7);
    end

endmodule
