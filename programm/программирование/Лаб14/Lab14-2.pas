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
write ('�� �������� ���� ��� ������� ',x,' ');
if x=0 then writeln('- ���,�� ����� ��� ���� ������� ���');
if x=1 then writeln('- ���������� ������');
if x=2 then writeln('- �����������');
if x=3 then writeln('- ��������');
if x=4 then writeln('- ������� �������');
if x=5 then writeln('- ����������');
if x=6 then writeln('- ����-����');
end.
