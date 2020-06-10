program lab2;
uses crt;
    const n=10;
var a,b,h,x,y:real;
          i:integer;

//---------------function------------------
function f(x,y:real):real;
begin
f:=y;
end;

//---------  E  -----------------------
function Euler(x,b,h:real):real;
begin
for i:=1 to n do
begin
y:=y+h*f(x,y);
x:=i*h;

end;
Euler:=y;
end;

//---------  RK4 --------------
function RK4(x,b,h:real):real;
var k1,k2,k3,k4:real;
begin
for i:=1 to n do
begin
k1:=h*f(x,y);
k2:=h*f(x+h/2,y+k1/2);
k3:=h*f(x+h/2,y+k2/2);
k4:=h*f(x+h,y+k3);
y:=y+(k1+2*k2+2*k3+k4)/6;
end;
RK4:=y;
end;

begin
 clrscr;
x:=0;
y:=1;
a:=y;
write('b=');
readln(b);
h:=(b-x)/n;
writeln('h=',h);
writeln('y(',b:2:4,')=',Euler(x,b,h):2:5);
x:=0;
y:=a;
writeln('y(',b:2:4,')=',RK4(x,b,h):2:5);

end.