program ex;
var x:array[1..101] of double;
var y:array[1..101] of double;
i, n: integer;
a,b,zn: double;
begin
readln(n);
for i:=1 to n do begin
read (x[i]); readln (y[i]);end;
read(a); readln(b);

zn:=(x[1]-x[n])*(b-y[n]) - (a-x[n])*(y[1]-y[n]);
x[n+1]:=x[1];
y[n+1]:=y[1];
for i:=1 to n do begin
if ((x[i+1]-x[i])*(b-y[i]) - (a-x[i])*(y[i+1]-y[i])) *zn <= 0
then begin write('NO'); exit; end
end;
write('YES');
end.