program lab4;
uses crt;
    const n=5;
var a,b,h,x,y:real;
          i:integer;

{---------------function----------------------}
function f(x,y:real):real;
begin
f:=y*(x+1);
end;

{---------  Euler  -----------------------}
function Euler(x,b,h:real):real;
begin
for i:=1 to n do
begin


end;
Euler:=y;
end;

{---------  Runge-Kutta's 2 --------------}
function Runge_Kutta2(x,b,h:real):real;
var z:real;
begin
for i:=1 to n do
begin



end;
Runge_Kutta2:=y;
end;

{---------  Runge-Kutta's 4 --------------}
function Runge_Kutta4(x,b,h:real):real;
var k1,k2,k3,k4:real;
begin
for i:=1 to n do
begin


end;
Runge_Kutta4:=y;
end;

begin
 clrscr;
x:=0;y:=1;
a:=y;

write('b='); readln(b);

h:=(b-x)/n; writeln('h=',h);

writeln('  theoria=',exp(b*b/2+b):2:6);

writeln('y(',b:2:4,')=',Euler(x,b,h):2:6);

y:=a;
writeln('y(',b:2:4,')=',Runge_Kutta2(x,b,h):2:6);

y:=a;
writeln('y(',b:2:4,')=',Runge_Kutta4(x,b,h):2:6);

end.