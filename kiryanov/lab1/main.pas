program shell;		

const   max     = 80;

type    ary     = array[1..max]of real;

var     x		: ary;
        i,n     	: integer;

procedure {shell} sort(var a: ary; n: integer);

var	done	: boolean;
	jump,i,j: integer;

procedure swap(var p,q: real);
var	hold	: real;

begin
  hold:=p;
  p:=q;
  q:=hold
end;		{ swap }

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
	    end		{ if }
	end		{ for }
      until done
  end			{ while }
end;		{ SORT }

procedure write_arr;
{ print out the answer }
var
  i: integer;

begin
  writeln;
  for i:=1 to n do
      write(x[i]:7:1,' ');
	writeln;
end;		{ write_arr }

begin   { MAIN program }
 n:=max;
 randomize;
 for i:=1 to n do
   x[i]:= random(100);
 sort( x,n );
 write_arr
end.

