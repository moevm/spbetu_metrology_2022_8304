program simq1;		
 
const rmax = 3;  
 	cmax = 3;  
 
type arys	= array[1..cmax] of real;
	ary2s	= array[1..rmax,1..cmax] of real;
 
var	y,coef: arys;
	a: ary2s;
 
 
procedure get_data(var a: ary2s;
		   var y: arys);
begin
	a[1,1] := 1;
	a[1,2] := -43;
	a[1,3] := 19;
	y[1] := 81;
	a[2,1] := 145;
	a[2,2]:= -134;
	a[2,3] := 99;
	y[2] := 12;
	a[3,1]:= 325;
	a[3,2] := 991;
	a[3,3] := -199;
	y[3] := 213;
end;

procedure solve(a: ary2s; y: arys;
				var coef: arys);
var
	b	: ary2s;
	i,j	: integer;
	det	: real;

function deter(a: ary2s): real;
begin				
  deter:= a[1,1] * (a[2,2] * a[3,3] - a[3,2] * a[2,3])
	- a[1,2] * (a[2,1] * a[3,3] - a[3,1] * a[2,3])
	+ a[1,3] * (a[2,1] * a[3,2] - a[3,1] * a[2,2]);  
end;

procedure setup(var b: ary2s;
	     var coef: arys;
		    j: integer);
var	i: integer;
begin	
  for i:=1 to rmax do
    begin
      b[i,j]:= y[i];
      if j>1 then b[i,j-1]:= a[i,j-1]
    end;
  coef[j]:=deter(b) / det
end;

begin
  for i:=1 to rmax do
    for j:=1 to rmax do
      b[i,j]:=a[i,j];
  
  det:=deter(b);
  if det=0.0 then
    exit
  else
    begin
      setup(b,coef,1);
      setup(b,coef,2);
      setup(b,coef,3);
    end
end;
 
begin
  get_data(a, y);
  solve(a, y, coef);
end.