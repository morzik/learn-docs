program ugadai;
uses crt;
var a,b:integer;
begin
randomize;
a:=random(1000)+1;
repeat
begin
write('¬ведите число ');readln(b);
if a>b then writeln('больше');
if a<b then writeln('меньше');end;
until a=b;
if a=b then writeln('угадал');
end.