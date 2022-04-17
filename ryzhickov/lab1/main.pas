program simp1;

const n = 5;
type ary = array[1..n]of real;

var x,y,y_calc : ary;
i : integer;
a,b : real;

procedure linfit2(x,y : ary;
var y_calc : ary;
var a,b : real;
n: integer);
var i : integer;
sum_x,sum_y,sum_xy,sum_x2,
sum_y2,xi,yi,sxy,sxx,
syy : real;
begin
sum_x:=0.0;
sum_y:=0.0;
sum_xy:=0.0;
sum_x2:=0.0;
sum_y2:=0.0;
for i:=1 to n do
begin
xi:=x[i];
yi:=y[i];
sum_x:=sum_x+xi;
sum_y:=sum_y+yi;
sum_xy:=sum_xy+xi*yi;
sum_x2:=sum_x2+xi*xi;
sum_y2:=sum_y2+yi*yi
end;
sxx:=sum_x2-sum_x*sum_x/n;
sxy:=sum_xy-sum_x*sum_y/n;
syy:=sum_y2-sum_y*sum_y/n;
b:=sxy/sxx;
a:=((sum_x2*sum_y-sum_x*sum_xy)/n)/sxx;
for i:=1 to n do
y_calc[i]:=a+b*x[i]
end;

begin
for i:=1 to n do
begin
x[i]:= random(100)/100;
y[i]:= random(100)/100;
end;
linfit2(x,y,y_calc,a,b,n);
writeln;
write('x: ');
for i:=1 to n do
write(x[i]:5:2,' ; ');
writeln;
write('y: ');
for i:=1 to n do
write(y[i]:5:2,' ; ');
writeln;
write('y_calc: ');
for i:=1 to n do
write(y_calc[i]:5:2,' ; ');
end.
