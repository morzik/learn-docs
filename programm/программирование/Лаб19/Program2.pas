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
writeln('Введите 1 строку:');
readln(s1);
writeln('Введите 2 строку:');
readln(s2);
PerevodST(st1,s1,m1);
PerevodST(st2,s2,m2);
writeln('Множество символов 1 строки:');
VivodSM(m1);
writeln('Множество символов 2 строки:');
VivodSM(m2);
if m1=m2 then writeln ('одинаковые') else writeln ('разные')
end.