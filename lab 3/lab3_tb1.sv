module lab3_tb;
logic l;
logic m;
logic n;
logic p;
logic q;

localparam period = 10;
lab3 UUT(
.a(l),
.b(m),
.c(n),
.x(p),
.y(q)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
l = 0;  m= 0; n = 0;
#period;
l = 0; m = 0; n = 1;
#period;
l = 0; m = 1; n = 0;
#period;
l = 0; m = 1; n = 1;
#period;
l = 1; m = 0; n = 0;
#period;
l = 1; m = 0; n = 1;
#period;
l = 1; m = 1; n = 0;
#period;
l = 1; m = 1; n = 1;
#period;
$stop;
end
initial
begin
/*the following system task will print out the signal values
every time they change on the Transcript Window */
$monitor("x=%b, y=%b, a=%b, b=%b, c=%b", p,q,l,m,n);
end
endmodule
