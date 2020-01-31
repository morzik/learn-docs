program lab2;
uses crt;
type arr=array[0..20] of real;
const eps=1e-5;
var       n:integer;
      x0,y0:real;
        x,y:arr;

function lineint(n:integer; x,y:arr;x0:real):real;
var i:integer;
begin
 i:=0;
 while ((x[i]<x0) and (x0<x[i+1])) do i:=i+1;
lineint:=y[i]+((x0-x[i])*(y[i+1]-y[i])/(x[i+1]-x[i]));
 end;

function lagrange(n:integer; x,y:arr; x0:real):real;
var i,j:integer;p,y0:real;
begin
y0:=0;
 for i:=0 to n do
begin
 p:=1;
  for j:=0 to n do begin
                     if i<>j
                       then p:=p*((x0-x[j])/(x[i]-x[j]));

                    end;
 y0:=y0+y[i]*p;
end;
lagrange:=y0;
end;



begin
 clrscr;
x0:=2.5;
n:=4;
x[0]:=1;  y[0]:=0.636;
x[1]:=2;  y[1]:=0.435;
x[2]:=3;  y[2]:=0.268;
x[3]:=5;  y[3]:=0.000;
x[4]:=6;  y[4]:=-0.111;


 if (x0>x[0]) and (x0<x[n])
    then begin
           writeln('f(',x0:2:2,')=',lineint(n,x,y,x0):2:5);

           writeln('f(',x0:2:2,')=',lagrange(n,x,y,x0):2:5);
         end
    else writeln('metody ne primenimy');


end.