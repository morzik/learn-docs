program pole_chudes;
uses crt;
var x:integer;
begin
randomize;
repeat
x:=random(7);
gotoxy(5,3); write(x);
until
keypressed;
gotoxy(5,7);
write ('Вы выйграли приз под номером ',x,' ');
if x=0 then writeln('- увы,но приза под этим номером нет');
if x=1 then writeln('- стиральная машина');
if x=2 then writeln('- холодильник');
if x=3 then writeln('- смартфон');
if x=4 then writeln('- швейная машинка');
if x=5 then writeln('- автомобиль');
if x=6 then writeln('- чупа-чупс');
end.
