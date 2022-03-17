program Shell_sort;		
const   max     = 200;
type    ary     = array[1..max]of real;

var     x		: ary;
        i,n     	: integer;

procedure sort(var a: ary; n: integer);

var	done	: boolean;
	jump,i,j: integer;

procedure swap(var p,q: real);
var	hold	: real;

begin
  hold:=p;
  p:=q;
  q:=hold
end;

begin
  jump:=n;
  while jump>1 do
    begin
      jump:=jump div 2;
      repeat
	done:=true;
	for j:=1 to n do
	  begin
	    i:=j+jump;
	    if a[j]>a[i] then
	      begin
		swap(a[j],a[i]);
		done:=false
	    end
	end
      until done
  end
end;

begin
 n:=max;
 randomize;
 for i:=1 to n do
   x[i]:= random(100);
 sort( x,n );
end.
