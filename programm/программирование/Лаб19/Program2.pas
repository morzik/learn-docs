program upr2;
uses crt;
Type
  ms = Set of Char;
Var
  s1,s2: String;
  m1,m2: ms;
  st1,st2:integer;
  
Procedure PerevodST(k:integer;st:string;var mn:ms);
var i:integer;
begin
mn:=[];
for i:=1 to Length(st) do
mn:=mn+[st[i]];;
end;

Procedure VivodSM(var h: ms);
var i:integer;
begin
  For i:=0 to 255 do
  If Chr(i) in h Then
  Write(Chr(i),' ');
  Writeln
end;

begin
m1:=[];
m2:=[];
writeln('������� 1 ������:');
readln(s1);
writeln('������� 2 ������:');
readln(s2);
PerevodST(st1,s1,m1);
PerevodST(st2,s2,m2);
writeln('��������� �������� 1 ������:');
VivodSM(m1);
writeln('��������� �������� 2 ������:');
VivodSM(m2);
if m1=m2 then writeln ('����������') else writeln ('������')
end.