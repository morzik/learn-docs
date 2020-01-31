program lab3;
uses crt;
    const eps=0.0001;
    //const n=50;
var a,b,h,x,int:real;
          i,n:integer;

{---------------function----------------------}
function f(x:real):real;
begin
f:=ln(17/(2*x +7));
end;

{---------  rectangle  -----------------------}
function rectangle(a,b,h:real):real;
var int:real;
begin
 int:=0;

for i:=0 to n-1 do
 int:=int+f(a+h*(i+0.5));
 int:=int*h;


rectangle:=int;
end;

{---------   trapesium   -----------------------}
function trapesium(a,b,h:real):real;
var x,int:real;
begin
 int:=(f(a)+f(b))/2 ;

for i:=1 to n-1 do

 int:=int+f(a+i*h);
 int:=int*h;

trapesium:=int;
end;
{---------   SIMPSON  -----------------------}
function simpson(a,b,h:real):real;
var x,t,w:real;
begin
w:= rectangle(a,b,h);
t:= trapesium(a,b,h);
simpson:=1/3*t+2/3*w ;
end;

begin
 clrscr;
 n:=1;
 write('a=');readln(a);
 write('b=');readln(b);

 repeat
 begin
 h:=(b-a)/n;
 n:=n*2;
 end;
 until simpson(a,b,(b-a)/n*2) - simpson(a,b,(b-a)/n) < eps;
 
  writeln('int rec=',rectangle(a,b,h):2:7);

  writeln('int tra=',trapesium(a,b,h):2:7);

  writeln('int sim=',simpson(a,b,h):2:7);
  writeln('n =',n);
end.