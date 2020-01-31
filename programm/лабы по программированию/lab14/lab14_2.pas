program lab14_2;
uses crt;
type arr=array [0..7] of string;
var i,k:integer; a:arr;
procedure priz(b:arr);
begin
a[0]:='банкрот';
a[1]:='кружка';
a[2]:='ложка';
a[3]:='велосипед';
a[4]:='скутер';
a[5]:='сигвей';
a[6]:='смартфон';
a[7]:='верталет';
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
       writeln('И вы выйграли : ',a[i]);
end.