program number1;
uses crt;
const
      eps=1e-5;
var a,b,c,q,x:real;

{---------------function----------------------}
function f(x:real):real;
begin
f:= exp(x)-x-4;
end;

{---------------derivation 1 ----------------------}
function f1(x:real):real;
begin
f1:=exp(x)-1;
end;

{---------------derivation 2 ----------------------}
function f2(x:real):real;
begin
f2:=exp(x);
end;

{---------------iteracion ----------------------}
function iter(x:real):real;
begin
iter:=exp(x)-4;
end;

{---------   DIHOTOMIA      -----------------------}
procedure vilka(a,b:real; var x:real);
var k:integer; c:real;
begin
    k:=0;
    repeat
    k:=k+1;
    c:=(a+b)/2;
    if (f(c)*f(b)<0)
    then a:=c
    else b:=c;
    until abs(a-b)<2*eps;
    writeln('k=',k);
    x:=(a+b)/2;
end;

{---------   NEWTON   -----------------------}
procedure newton(a,b:real; var x:real);
var k:integer;
begin
    k:=0;
    repeat
    k:=k+1;
    a:=a-((f(a)*(b-a))/(f(b)-f1(a)));
    b:=b-(f(b)/f1(b));
    until abs(a-b)<2*eps;
    writeln('k=',k);
    x:=(a+b)/2;
end;

{---------   iteracio-n   -----------------------}
procedure iteracion(a,q:real; var x:real);
var t:real;  k:integer;
begin
     k:=0;
     t:=a;
     repeat
     k:=k+1;
     x:=t;
     t:=iter(x);
     until abs(x-t)<(1-q)/q;
     writeln('k=',k);
     x:=t;
end;


begin
 clrscr;
 write('a=');readln(a);
 write('b=');readln(b);

 {---------vilka-------------}
 if  f(a)*f(b)<0
     then begin  vilka(a,b,x);writeln('metod vilki  x =',x:3:8); end
     else writeln('mistake [a,b]');

 {---------Newton-------------}
 if   (f1(a)>0) and (f2(a)>0) and (f1(b)>0) and (f2(b)>0)
     then begin
           newton(a,b,x);
           writeln('Newton metod x =',x:3:8); end
     else writeln('metod neprimenim');

 {---------ITERACION-------------}
           q:=1/exp(4);
           iteracion(a,q,x);
           writeln('metod iteraciy x =',x:3:8);


end.