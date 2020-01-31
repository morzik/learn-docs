Program lab8_1;
uses crt;
var n,i:integer; a:array[1..100] of longint;
begin
readln(n);
for i:=1 to n do
  read(a[i]);
for i:=1 to n do
    if a[i] mod 2 = 0 then write(a[i],' ');
end.