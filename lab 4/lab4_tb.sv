module lab4_tb;
logic l;
logic m;
logic n;
logic o;
logic p;
logic q;
logic r;

localparam period = 10;

lab4 UUT(
.a1(l),
.a0(m),
.b1(n),
.b0(o),
.r(p),
.g(q),
.b(r)
);

initial 
begin
l = 0; m = 0; n = 0; o = 0;
#period;
l = 0; m = 0; n = 0; o = 1;
#period;
l = 0; m = 0; n = 1; o = 0;
#period;
l = 0; m = 0; n = 1; o = 1;
#period;
l = 0; m = 1; n = 0; o = 0;
#period;
l = 0; m = 1; n = 0; o = 1;
#period;
l = 0; m = 1; n = 1; o = 0;
#period;
l = 0; m = 1; n = 1; o = 1;
#period;
l = 1; m = 0; n = 0; o = 0;
#period;
l = 1; m = 0; n = 0; o = 1;
#period;
l = 1; m = 0; n = 1; o = 0;
#period;
l = 1; m = 0; n = 1; o = 1;
#period;
l = 1; m = 1; n = 0; o = 0;
#period;
l = 1; m = 1; n = 0; o = 1;
#period;
l = 1; m = 1; n = 1; o = 0;
#period;
l = 1; m = 1; n = 1; o = 1;
#period;
$stop;
end

initial
begin

$monitor("a1=%b, a0=%b, b1=%b, b0=%b, r=%b, g=%b, b=%b", l, m, n, o, p, q, r);
end
endmodule
