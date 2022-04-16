program simp1;
{ integration by Simpson's method }
const	tol		= 1.0E-6;
var	sum,upper,lower	: real;

function fx(x: real): real;
begin
  fx := exp(-x / 2)
end;	{ function fx }
function dfx(x: real): real;
begin
  dfx := -(exp(-x / 2)) / 2
end;	{ function fx }

procedure simps(
		lower,upper,tol	: real;
		var sum		: real);
 { numerical integration by Simpson's rule }
{ function is fx, limits are lower and upper }
{ with number of regions equal to pieces }
{ partition is delta_x, answer is sum }
 
var	i		: integer;
	x,delta_x,even_sum,
	odd_sum,end_sum,
	end_cor,sum1	: real;
	pieces		: integer;
 
begin
  pieces := 2;
  delta_x := (upper-lower) / pieces;
  odd_sum := fx(lower+delta_x);
  even_sum := 0;
  end_sum := fx(lower)+fx(upper);
  end_cor := dfx(lower)-dfx(upper);
  sum := (end_sum+4*odd_sum)*delta_x / 3;
  repeat
    pieces := pieces*2;
    sum1 := sum;
    delta_x := (upper-lower) / pieces;
    even_sum := even_sum+odd_sum;
    odd_sum := 0;
    for i := 1 to pieces div 2 do
      begin
	x := lower+delta_x*(2*i-1);
	odd_sum := odd_sum+fx(x)
      end;
    sum := (7*end_sum+14*even_sum+16*odd_sum
				+end_cor*delta_x)*delta_x / 15;
  until (sum<>sum1) and (abs(sum-sum1)<=abs(tol*sum))
end;	{ simps }
begin		{ main program }
  lower := 1;
  upper := 9;
  simps(lower,upper,tol,sum);
end.
