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
write('Введите ответ ',a,'*',b,'= ');
readln(k);
if k=a*b then
begin
writeln ('-ответ верный');
x:=x+1;
end;
if k<>a*b then writeln ('-ответ не верный,правильный ответ ',a*b);end;
if x=5 then writeln('Ваша оценка ',x);
if x=4 then writeln('Ваша оценка ',x);
if x=3 then writeln('Ваша оценка ',x);
if x<=2 then writeln('Ваша оценка ',2);
end.
