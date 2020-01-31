program lab14_4;
uses crt;
var x,y,color :integer;
begin
x:=random(10)+1;
repeat
writeln('введите число');
read(y);
if x<y then writeln('больше')
else if x>y then writeln('меньше')
until x=y;
writeln('угадал');
end.