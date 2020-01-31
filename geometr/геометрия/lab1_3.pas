Uses crt;
Var p,s,min: real;
    n: integer;
    x,y: array[1..100] of real;

Procedure Vvod;
Var i: integer;
Begin

 read(n);
 for i:= 1 to n do


   read(x[i],y[i]);


  x[n+1]:=x[1];
  y[n+1]:=y[1];
End;

Procedure Perenos;
Var i: integer;
Begin
 min:=y[1];
 for i:= 2 to n do
  if min >y[i] then
   min:=y[i];
  for i:=1 to n+1 do
   y[i]:=y[i]-min;
End;

Procedure Ploshad;
Var i: integer;
Begin
 s:=0;
 for i:= 1 to n do
  s:= s+((y[i+1]+y[i])*(x[i+1]-x[i])/2);
end;

Procedure Vyvod;
Begin
 write(abs(s):1:2);
 read;
end;

Begin
 clrscr;
 Vvod;
 Perenos;
 Ploshad;
 Vyvod;
end.