program lab17_2;
uses crt;
type arr=Array [1..20] of real;
     FileReal=file of real;
var n:real; g:FileReal; i,k:integer; s:string; A:arr;

procedure vivod(var A:arr; i:integer);
var name:string;f:FileReal;
begin
writeln('введите имя считываемого файла');
readln(name);
assign(f,name);
reset(f);
i:=0;
while not eof(f) do
begin
i:=i+1;
read(f,A[i]);
write(A[i],' ');
end;
writeln;
writeln('вывод окончен');
close(f);
end;

begin
clrscr;
vivod(A,k);
end.