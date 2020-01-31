program lab4_3;
uses crt;
var n,i,a:integer; f,b:real;
begin
  readln(a,n);
  f := 1/a;
  b:=a+1;
  for i:=1 to n do begin
   f:=f+f*(1/b);
   b:=b*(b+1);
   end;
  writeln('f=', f:5:2);
end.