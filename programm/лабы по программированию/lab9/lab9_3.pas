program lab9_3;
uses crt;
var i, j:integer;
  n, m, max, k: longint;
  b:array[0..10] of integer;
  a:array[0..10, 0..10] of integer;
begin
read (n);
read (m);

b[0]:=0;

for i:= 0 to n-1 do
  for j:=0 to m-1 do
    read(a[i,j]);

for i:=0 to n-1 do
  for j:=0 to m-1 do
    b[i]:=b[i]+a[i,j];

max:=b[0];
k:=0;

for i:=0 to n-1 do
  if b[i]>max then begin
    max:=b[i];
    k:=i;
  end;
  
writeln(max);
writeln(k);
end.