Program lab6_1;
uses crt;
var pr, i, n:integer;
begin
repeat
clrscr;
readln(n);
until n <30;
pr:=1;
for i:=1 to n do
pr:=pr*2;
writeln(pr);
end.