program romb1;
const	tol		= 1.0E-4;
var	done		: boolean;
	sum,upper,lower	: real;

function fx(x: real): real;
begin
  fx:=1.0/x
end;

function romb(
		lower,upper,tol: real):real;
var
	nx			: array[1..16] of integer;
	t			: array[1..136] of real;
	done,error		: boolean;
	pieces,nt,i,ii,n,nn,
	l,ntra,k,m,j		: integer ;
	delta_x,c,sum,fotom,x	: real ;
begin
  done:=false;
  error:=false;
  pieces:=1;
  nx[1]:=1;
  delta_x:=(upper-lower)/pieces;
  c:=(fx(lower)+fx(upper))*0.5;
  t[1]:=delta_x*c;
  n:=1;
  nn:=2;
  sum:=c;
  repeat
    n:=n+1;
    fotom:=4.0;
    nx[n]:=nn;
    pieces:=pieces*2;
    l:=pieces-1;
    delta_x:=(upper-lower)/pieces;
    for ii:=1 to (l+1) div 2 do
    begin
	      i:=ii*2-1;
	      x:=lower+i*delta_x;
	      sum:=sum+fx(x)
    end;
    t[nn]:=delta_x*sum;
    ntra:=nx[n-1];
    k:=n-1;
    for m:=1 to k do
      begin
	j:=nn+m;
	nt:=nx[n-1]+m-1;
	t[j]:=(fotom*t[j-1]-t[nt])/(fotom-1.0);
	fotom:=fotom*4.0
      end;
    if n>4 then
      begin
	if t[nn+1]<>0.0 then
  begin
	  if (abs(t[ntra+1]-t[nn+1])<=abs(t[nn+1]*tol))
	    or (abs(t[nn-1]-t[j])<=abs(t[j]*tol)) then
	      done:=true
	  else if n>15 then
	    begin
	      done:=true;
	      error:=true
	    end
	end;
	end;
    nn:=j+1
  until done;
  romb:=t[j]
end;		

begin		
  lower:=1.0;
  upper:=9.0;

  sum:= romb(lower,upper,tol);
end.
