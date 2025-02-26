module lab5_bhv (
    input logic a, b, c, d, s1, s2, s3,
    output logic A, B, C, D, E, F, G,
    output logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7
);
  
    always_comb begin
        AN0 = s1 | s2 | s3;
        AN1 = s1 | s2 | ~s3;
        AN2 = s1 | ~s2 | s3;
        AN3 = s1 | ~s2 | ~s3;
        AN4 = ~s1 | s2 | s3;
        AN5 = ~s1 | s2 | ~s3;
        AN6 = ~s1 | ~s2 | s3;
        AN7 = ~s1 | ~s2 | ~s3;
    end

    always_comb begin
        case ({a, b, c, d})
            4'b0000: {A, B, C, D, E, F, G} = 7'b0000001; // Display 0
            4'b0001: {A, B, C, D, E, F, G} = 7'b1001111; // Display 1
            4'b0010: {A, B, C, D, E, F, G} = 7'b0010010; // Display 2
            4'b0011: {A, B, C, D, E, F, G} = 7'b0000110; // Display 3
            4'b0100: {A, B, C, D, E, F, G} = 7'b1001100; // Display 4
            4'b0101: {A, B, C, D, E, F, G} = 7'b0100100; // Display 5
            4'b0110: {A, B, C, D, E, F, G} = 7'b0100000; // Display 6
            4'b0111: {A, B, C, D, E, F, G} = 7'b0001111; // Display 7
            4'b1000: {A, B, C, D, E, F, G} = 7'b0000000; // Display 8
            4'b1001: {A, B, C, D, E, F, G} = 7'b0000100; // Display 9
            4'b1010: {A, B, C, D, E, F, G} = 7'b0001000; // Display A
            4'b1011: {A, B, C, D, E, F, G} = 7'b1100000; // Display B
            4'b1100: {A, B, C, D, E, F, G} = 7'b0110001; // Display C
            4'b1101: {A, B, C, D, E, F, G} = 7'b1000010; // Display D
            4'b1110: {A, B, C, D, E, F, G} = 7'b0110000; // Display E
            4'b1111: {A, B, C, D, E, F, G} = 7'b0111000; // Display F
            default: {A, B, C, D, E, F, G} = 7'b1111111; // Blank display
        endcase
    end
endmodule