program lab14_1;
uses crt;
var x,y,color :integer;
begin
repeat
color:=random(15);
x:=random(80)+1;
y:=random(80)+1;
TextColor(color);
gotoxy(x,y);
write('*');
until keypressed;
end.