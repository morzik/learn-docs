program number1;
uses crt;
const n=1;
      eps=1e-8;
var a,b,c,q,x:real;  i:integer;

{---------------function----------------------}
function f(x:real):real;
begin
f:=exp(x)-x-11;
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
iter:=ln(x+11);
end;


{---------   DIHOTOMIA      -----------------------}
procedure vilka(a,b:real; var x:real; var k:integer);
var c:real;
begin
k:=0;
repeat c:=(a+b)/2; k:=k+1;
if f(a)*f(c)<0  then b:=c else a:=c;
until abs(b-a)<2*eps;
x:=(a+b)/2;
end;

{---------   NEWTON   -----------------------}
procedure newton(a,b:real; var x:real; var k:integer);
begin
k:=0;
repeat a:=a-f(a)*(b-a)/(f(b)-f(a)); b:=b-f(b)/f1(b); k:=k+1;
until abs(b-a)<2*eps; x:=(a+b)/2;
end;

{---------   iteracion   -----------------------}
procedure iteracion(a,q:real; var x:real; var k:integer);
var y:real;
begin
k:=0;repeat
 x:=a;
 a:=iter(x); k:=k+1;
 until abs(x-a)<(1-q)*eps/q;
x:=a;
end;

begin
 clrscr;
 write('a=');readln(a);
 write('b=');readln(b);
 if f(a)*f(b)<0
 then begin vilka(a,b,x,i);
writeln('metod vilki  x =',x:3:8, '; кол-во шагов = ',i); end
else writeln('mistake [a,b]');

 if f1(a)*f1(b)>0
     then begin if f2(a)*f2(b)>0
        then begin c:=a;a:=b;b:=c; end;
           newton(a,b,x,i);
           writeln('Newton metod x =',x:3:8,'; кол-во шагов = ',i); end
     else writeln('metod neprimenim');

      q:=1/13;
      iteracion(a,q,x,i);
      writeln('metod iteraciy x =',x:3:8,'; кол-во шагов = ',i);

end.