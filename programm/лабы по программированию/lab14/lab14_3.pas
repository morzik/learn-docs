program lab16_3;
uses crt;
var x,y,z,i,k:integer;
begin
for i:=1 to 5 do begin
x:=random(9)+1;
y:=random(9)+1;
writeln('���������:',x,'*',y);
writeln('��� �����:');
read(z);
if z=x*y then begin
k:=k+1;
writeln('�����') end
else
writeln('�������');
end;
write('���� ������ = ',k);
end.