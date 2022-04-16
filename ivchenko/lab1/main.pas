program B_sort1;		

const   max     = 80;

type    ary     = array[1..max]of real;

var     x		: ary;
        i,n     	: integer;
  
procedure sort(var a: ary; n: integer);

var	no_change	: boolean;
	j		: integer;

procedure swap(var p,q: real);
var	hold	: real;
begin
  hold:=p;
  p:=q;
  q:=hold
end;

begin
  repeat
    no_change:=true;
    for j:=1 to n-1 do
      begin
	if a[j]>a[j+1] then
	  begin
	    swap(a[j],a[j+1]);
	    no_change:=false
	  end
	end
  until no_change
end;	

begin   
 n:=max;
 randomize;
 for i:=1 to n do
   x[i]:= random(100);
 sort( x,n );
end.

