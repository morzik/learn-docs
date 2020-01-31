program lab2;
uses crt;
type arr=array[0..20] of real;
const eps=1e-5;
var       n:integer;
      c,q:real;
        x,y:arr;

function lineint(n:integer; x,y:arr; c:real):real;
var i:integer;
begin
 i:=0;
 while                 do i:=i+1;

 lineint:= ;
 end;

function lagrange(n:integer; x,y:arr; c:real):real;
var i,j:integer;p,q:real;
begin
q:=0;
 for i:=0 to n do
begin
 p:=1;
  for j:=0 to n do begin
                     if
                       then p:=p*    ;
                    end;
 q:=q+y[i]*p;
end;
lagrange:=q;
end;




begin
 clrscr;
c:=8.5;
n:=4;
x[0]:=2;  y[0]:=0;
x[1]:=5;  y[1]:=-0.767;
x[2]:=6;  y[2]:=-0.932;
x[3]:=9;  y[3]:=-1.306;
x[4]:=10; y[4]:=-1.405;

{x[5]:=6;  y[5]:=3;
x[6]:=6;  y[6]:=3;
x[7]:=7;  y[7]:=3;}

 if (c>x[0]) and (c<x[n])
    then begin
           writeln('f(',c:2:2,')=',lineint(n,x,y,c):2:5);

           writeln('f(',c:2:2,')=',lagrange(n,x,y,c):2:5);
         end
    else writeln('metody ne primenimy');


end.