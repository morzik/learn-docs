program upr1;
uses crt;
type mass=array [1..10000] of real;

var x,y:real; n:integer;
    f:file of real;
    st,st2:string;
    m:mass;
    l:boolean;

//sozdanie faila
procedure newfile (st:string; n:integer);
var i:integer;
begin
assign(f,st);
rewrite(f);
randomize;
for i:=1 to n do
 begin
 x:=(random(70)-10)*0.26;
 write(f,x);
 end;
close(f);
end;

//perevod v massiv
procedure readfile(st:string; var m:mass; var n:integer);
begin
assign(f,st);
reset(f);
n:=0;
while not(eof(f)) do
      begin
      n:=n+1;
      read(f,m[n]);
      end;
close(f);
end;

//pechat
procedure printfile(m:mass; n:integer);
var i:integer;
begin
writeln ('����� ������ �������� ������');
for i:=1 to n do writeln(m[i]);
end;

procedure sravnfile(s1:string; s2:string; n:integer; var r:boolean);
var f1,f2:file of real;
begin
assign(f1,s1);
assign(f2,s2);
reset(f1);reset(f2);
r:=true;
if filesize(f1)<> filesize(f2) then r:=false
else
while not(eof(f1)) do
      begin
      read(f1,x);
      read(f2,y);
            if x<>y then r:=false;
            end;
close(f1);
close(f2);
end;

procedure pervotr(s1:string; n:integer);
var x:real;
begin
assign(f,s1);
reset(f);
n:=0;
while x>=0 do
      begin
      n:=n+1;
      read(f,x);
      if x<0 then writeln('������ ������������� ������� ',x,' ��� ����� ����� ',n);
      end;
close(f);
end;

begin
write('������� �������� �����: ');
readln(st);
write('������� ����������� ��������: ');
readln(n);
newfile(st,n);
readfile(st,m,n);
printfile(m,n);
pervotr(st,n);
end.