program lab9_1;
uses crt;
var x, y, i, j, ext: integer; a:array[1..10, 1..10] of integer;
begin
readln(x);
readln(y);
for i:= 1 to x do
  for j:=1 to y do
    readln(a[i,j]);

clrscr;

for i:=1 to x do begin
  for j:=1 to y do
    write(a[i,j],' ');
    writeln;
  end;
writeln;
writeln;

ext:=a[1,1];

for i:=1 to x-1 do
  for j:=1 to y-1 do
    if a[i,j]>ext then ext:=a[i,j];

for i:=1 to x do begin
  for j:=1 to y do
    if a[i,j]=ext then begin
       a[i,j]:=a[i,j]*2;
       write (a[i,j],'  ');
       end
    else write(a[i,j],'  ');
    writeln;
  end;
end.