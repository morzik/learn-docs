program ugadai;
uses crt;
var a,b:integer;
begin
randomize;
a:=random(1000)+1;
repeat
begin
write('������� ����� ');readln(b);
if a>b then writeln('������');
if a<b then writeln('������');end;
until a=b;
if a=b then writeln('������');
end.