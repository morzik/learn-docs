program zvezdnoe_nebo;
uses crt;
var x,y,z:integer;
begin
randomize;
repeat
x:=random(70)+1;
y:=random(20)+1;
z:=random(16+1);
textcolor(z);
gotoxy(x,y);
delay(500);
writeln('.');
until
keypressed;
end.
