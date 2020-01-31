program lab9_2;
uses crt;
var n, i, j, max, min: integer;
a:array[1..10, 1..10] of integer;
begin
readln(n);
for i:= 1 to n do
  for j:=1 to n do
    readln(a[i,j]);

clrscr;

for i:=1 to n do begin
  for j:=1 to n do
    write(a[i,j],' ');
    writeln;
  end;
writeln;
writeln;

max:=a[1,1];

for i:=1 to n-1 do
  for j:=1 to n-1 do
    if a[i,j]>max then max:=a[i,j];

for i:=1 to n do begin
  for j:=1 to n do
    if a[i,j]=max then begin
       a[i,j]:=a[i,j]*2;
       write (a[i,j],'  ');
       end
    else write(a[i,j],'  ');
    writeln;
  end;
  
min:=a[1,1];

writeln;
writeln;

for i:=1 to n do
  for j:=1 to n do
    if i+j>n+1 then
      if a[i,j]<min then min:=a[i,j];
      

writeln(min);


end.

