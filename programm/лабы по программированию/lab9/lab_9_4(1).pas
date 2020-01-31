program lab9_4;
uses crt;                           
var a: array[1..50,1..50] of integer;
n,i,m,j: integer;
k:real;
f:boolean;
begin
readln(n);
readln(m);
k:=0;
for i:=1 to n do
  for j:=1 to m do
    read(a[i,j]);
    
clrscr;

for i:=1 to n do begin
  for j:=1 to m do
    write(a[i,j]:5);
    writeln;
  end;

for j:=1 to m do begin
  f:=false;
  for i:=1 to n do
    if a[i,j]<>a[n,j] then f:=true;
    if f then k:=k+1;
  end;

writeln(k);
end.