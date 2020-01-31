Program lab7_1;
uses crt;
var n,i:integer; a:array[1..10] of integer;
begin
n:=10;
for i:=1 to n do begin
  write('a[',i,']=');
  readln(a[i]);
  end;
for i:=1 to n do
write(a[i],'  ');
end.

