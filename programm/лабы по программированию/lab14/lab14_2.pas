program lab14_2;
uses crt;
type arr=array [0..7] of string;
var i,k:integer; a:arr;
procedure priz(b:arr);
begin
a[0]:='�������';
a[1]:='������';
a[2]:='�����';
a[3]:='���������';
a[4]:='������';
a[5]:='������';
a[6]:='��������';
a[7]:='��������';
end;
begin
priz(a);
repeat
sleep(150);
gotoxy(40,1);
k:=random(8);
writeln(k);
until keypressed;
for i:=0 to 7 do
    if k=i
       then
       writeln('� �� �������� : ',a[i]);
end.