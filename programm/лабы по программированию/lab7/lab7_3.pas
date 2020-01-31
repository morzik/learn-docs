Program lab7_3;
uses crt;
var n,i,ext:integer; b,a:array[1..5] of integer;
begin
n:=5;
a[1]:=10;
a[2]:=3;
a[3]:=-8;
a[4]:=54;
a[5]:=8;

ext:=a[1];

for i:=1 to n-1 do
  if a[i]>a[i+1] then ext:=i;

for i:=1 to n do
write(a[i],'  ');
writeln;

for i:=1 to n do
    b[i]:=a[i]*2;
    
b[n]:=ext;

for i:=1 to n do
    write(b[i],'  ');

end.

