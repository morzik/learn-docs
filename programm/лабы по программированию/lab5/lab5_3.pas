Program lab5_3;
uses crt;
var n,k:integer;
e,s,s1,sum,x:real;
begin
writeln('vvedite O');
readln (x);
writeln('vvedite E');
readln (e);
n:=0;
sum:=0;
k:=0;
s:=x;
s1:=x;
while abs(s1)>=e do
begin
writeln (s);
k:=k+1;
sum:=sum+s1;
n:=n+1;
s:= -s*x*x ;
s1:=s/(2*n+1);
end;
writeln ('����� ����������� ����� ',k,' ��������� ���������� ������� � ��� ������� ��� y=arctg(x)= ',x,' ���������� ',sum,' ��� ��������� � ������������� ��������� ',Arctan(x),' � ��������� � = ',e);
end.

//arcctg (�)