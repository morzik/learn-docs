program tabl_umn;
uses crt;
var  a,b,n,x,i,k:integer;
begin
randomize;
n:=5;
x:=0;
for i:=1 to n do
begin
a:=random(9)+1;
b:=random(9)+1;
write('������� ����� ',a,'*',b,'= ');
readln(k);
if k=a*b then
begin
writeln ('-����� ������');
x:=x+1;
end;
if k<>a*b then writeln ('-����� �� ������,���������� ����� ',a*b);end;
if x=5 then writeln('���� ������ ',x);
if x=4 then writeln('���� ������ ',x);
if x=3 then writeln('���� ������ ',x);
if x<=2 then writeln('���� ������ ',2);
end.
