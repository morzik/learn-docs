program lab8_4;
uses crt;
var x, y, i, j: integer; a:array[1..10, 1..10] of integer;
begin
readln(x);
readln(y);
for i:= 1 to x do
  for j:=1 to y do
    readln(a[i,j]);

clrscr;

for i:=1 to x do begin
  for j:=1 to y do
    write(a[i,j]:2);
    writeln;
  end;
end.