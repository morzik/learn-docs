program lab17_1;
uses crt;
type FileReal=file of real;
var n:real; g:FileReal; i,k:integer; s:string;

procedure vvod( f:FileReal; var k:integer; name:string);
var i:integer;
begin
writeln('������� �������� �����');
readln(name);
assign(f,name);
writeln('������� ���������� �����');
readln(k);
rewrite(f); {������� ���� ��� ������}
for i:=1 to k do
begin
writeln('������� ' ,i,'-� �����');
read(n);
write(f,n);
end;
writeln('������ ��������');
close(f);
end;

begin
clrscr;
vvod(g,k,s);
end.