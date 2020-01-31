program lab17_4;
uses crt;
type
    arr=Array [1..20] of real;
    FileReal=file of real;
var n,l:real; g:FileReal; i,k:integer; s:string; A:arr;


procedure minfile(f:FileReal; var i:integer; l:real);
var n,k,max,min:real; x,j:integer; flag:boolean; name:string;
begin
writeln('введите имя считываемого файла');
read(name);
assign(f,name);
reset(f);
read(f,n);
min:=n;
j:=filepos(f);
while (not eof(f)) do
begin
read(f,n);
if n<min then begin min:=n; j:=filepos(f);
end;
end;
writeln('min значение=',min,' и его позиция', j);
close(f);
end;

begin
clrscr;

minfile(g,i,n);
end.
