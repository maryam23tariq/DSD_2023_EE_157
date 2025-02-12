module lab3(
                output x,
                output y,
                input a,
                input b,
                input c
                );
                assign x= (~c)^(a|b);
                assign y=(a|b)&(~(a&b)^(a|b));
                
endmodule
