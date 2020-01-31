program lab9_4;
uses crt;
var x, y, i, j, sumk: integer;
a:array[1..10, 1..10] of integer;
f:boolean;
begin
readln(x);
readln(y);

sumk:=0;

for i:= 1 to x do
  for j:=1 to y do
    readln(a[i,j]);

clrscr;

for i:=1 to x do begin
  for j:=1 to y do
    write(a[i,j],' ');
    writeln;
  end;

for j:=1 to y do begin
  f:=true;
  for i:=1 to x do
    if a[i,j]<>0 then f:=false;
    if f then sumk:=sumk+1;
    end;

writeln(sumk);
end.