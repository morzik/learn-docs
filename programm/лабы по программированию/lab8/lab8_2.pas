Program lab8_2;
uses crt;
var a: array [1..100] of integer;
    n,i,k,r: integer;
begin
readln(n);
k:=0;
for i:=1 to n do
  read(a[i]);
readln(r);
for i:=1 to n do
if a[i]>=r then inc(k);
writeln(k+1);
end.