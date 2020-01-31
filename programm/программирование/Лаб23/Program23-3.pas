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
 x:=(random(7)+1)*0.26;
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
writeln ('После чтения получаем массив');
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

begin
write('Введите название файла: ');
readln(st);
write('Введите колличество значений: ');
readln(n);
newfile(st,n);
readfile(st,m,n);
printfile(m,n);
write('Введите имя 2ого файла: ');readln(st2);
sravnfile(st,st2,n,l);
if l then write('Файлы одинаковые') else write('Файлы не одинаковые');
end.