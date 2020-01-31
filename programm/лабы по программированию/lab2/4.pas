program lab2_4;
uses crt;
var a, b, c, d: real;
begin
  readln(a, b, c);
  d:=b*b-4*a*c;
  if a<>0 then
	  if (d>0)
	    then writeln((-b-sqrt(d))/(2*a),' ',(-b+sqrt(d))/(2*a))
	  else
	    if d=0 then write(-b/(2*a))
	else Exit;
end.