program lab14_4;
uses crt;
var x,y,color :integer;
begin
x:=random(10)+1;
repeat
writeln('������� �����');
read(y);
if x<y then writeln('������')
else if x>y then writeln('������')
until x=y;
writeln('������');
end.