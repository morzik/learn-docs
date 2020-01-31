Program lab7_2;
uses crt;
var n,i:integer; b,a:array[1..5] of integer;
begin
n:=5;
a[1]:=10;
a[2]:=3;
a[3]:=-8;
a[4]:=54;
a[5]:=8;
for i:=1 to n do
write(a[i],'  ');
writeln;
for i:=1 to n do
    b[i]:=a[i]*2;
for i:=1 to n do
write(b[i],'  ');
    
end.

