program lab3;
uses crt;
    const n=20;
var a,b,h,x,int:real;
          i:integer;

{---------------function----------------------}
function f(x:real):real;
begin
f:=exp(x);
end;

{---------  rectangle  -----------------------}
function rectangle(a,b,h:real):real;
var x,int:real;
begin
 int:=0;
 x:= ;
for i:=0 to n-1 do
begin


end;
rectangle:=int;
end;

{---------   trapesium   -----------------------}
function trapesium(a,b,h:real):real;
var x,int:real;
begin
 int:= ;
 x:=   ;
for i:=1 to n-1 do
begin


end;
trapesium:=int;
end;
{---------   SIMPSON  -----------------------}
function simpson(a,b,h:real):real;
var x,t,w:real;
begin
w:= ;
t:= ;
simpson:=1/3*        +2/3* ;
end;

begin
 clrscr;
 write('a=');readln(a);
 write('b=');readln(b);
 h:=       ;

  writeln('int rec=',rectangle(a,b,h):2:5);

  writeln('int tra=',trapesium(a,b,h):2:5);

  writeln('int sim=',simpson(a,b,h):2:5);
end.