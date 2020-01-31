program lab17_1;
uses crt;
type FileReal=file of real;
var n:real; g:FileReal; i,k:integer; s:string;

procedure vvod( f:FileReal; var k:integer; name:string);
var i:integer;
begin
writeln('¬ведите название файла');
readln(name);
assign(f,name);
writeln('введите количество чисел');
readln(k);
rewrite(f); {открыть файл дл€ записи}
for i:=1 to k do
begin
writeln('введите ' ,i,'-е число');
read(n);
write(f,n);
end;
writeln('запись окончена');
close(f);
end;

begin
clrscr;
vvod(g,k,s);
end.