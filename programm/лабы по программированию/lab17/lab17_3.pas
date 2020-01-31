program lab17_3;
uses crt;
type
    arr=Array [1..20] of real;
    FileReal=file of real;
    
var n:real; f1,f2:FileReal; i,k:integer; s:string; A:arr;

procedure vvod( f:FileReal; var k:integer; name:string);
var i:integer;
begin
writeln('¬ведите название файла');
readln(name);
assign(f,name);
writeln('введите количество чисел');
readln(k);
rewrite(f);
for i:=1 to k do
begin
writeln('введите ' ,i,'-е число');
read(n);
write(f,n);
end;
writeln('запись окончена');
close(f);
end;

function equality(f,g:FileReal):boolean;
var n,m1,m2:real; flag:boolean; name1,name2:string;
begin
writeln('введите им€ считываемого первого файла');
readln(name1);
assign(f,name1);
reset(f);
writeln('введите им€ считываемого второго файла');
readln(name2);
assign(g,name2);
reset(g);
flag:=false;
while (not (eof(f) and eof(g))) and (flag = false) do
begin
read(f,m1);
read(g,m2);
if m1<>m2  then flag:=true;
end;
close(f);
close(g);
equality:=flag;
end;


begin
clrscr;
if equality(f1,f2) then writeln('не одинкаовы') else writeln('одинаковы');
end.