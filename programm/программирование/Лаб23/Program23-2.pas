program upr1;
uses crt;
type mass=array [1..100] of real;

var x:real; y,n:integer;
    f:file of real;
    st:string;
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


begin
write('Введите название файла: ');
readln(st);
write('Введите колличество значений: ');
readln(n);
newfile(st,n);
readfile(st,m,n);
printfile(m,n);
end.