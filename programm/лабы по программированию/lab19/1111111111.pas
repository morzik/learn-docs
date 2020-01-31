program lab;
uses crt;
type student=record
fam:string[255];
lab:array [1..16] of integer;
sam:array [1..8] of integer;
cob:array [1..5] of integer;
quiz:array [1..6] of integer;
dop:integer;
summa: integer;
sumlab,sumsam,sumcob,sumquiz,sumdop,sumkr:integer;
itog:integer;
end;
A=array[1..10] of student;
var i,n:integer; f:text;
X:A;
ssam,slab,scob,squiz,ssumma: array[1..10] of integer;

procedure wwod(var x:A; var n:integer);
var i,j,d,p:integer; f:text; a,s:string[255];
begin
assign(f,'sem1.txt');
reset(f);
i:=0;
while not eof(f) do
begin
readln(f,a);
j:=1;
inc(i);
d:=pos(',',a);
x[i].fam:=copy(a,1,d-1);
delete(a,1,d);
x[i].sumlab:=0;
for j:=1 to 16 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].lab[j],p);
delete(a,1,d);
x[i].sumlab:=x[i].sumlab+x[i].lab[j];
end;
x[i].sumsam:=0;
for j:=1 to 8 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].sam[j],p);
delete(a,1,d);
x[i].sumsam:=x[i].sumsam+x[i].sam[j];
end;
x[i].sumcob:=0;
for j:=1 to 5 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].cob[j],p);
delete(a,1,d);
x[i].sumcob:=x[i].sumcob+x[i].cob[j];
end;
x[i].sumquiz:=0;
for j:=1 to 6 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].quiz[j],p);
delete(a,1,d);
x[i].sumquiz:=x[i].sumquiz+x[i].quiz[j];
end;
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].dop,p);
delete(a,1,d);
val(a,x[i].itog,p);
end;
n:=i;
close(f);
for i:=1 to n do
x[i].summa:=x[i].sumlab+x[i].sumsam+x[i].sumcob+x[i].sumquiz+x[i].dop+x[i].itog;
end;

procedure wywod(x:a; n:integer);
var i,j:integer;
begin
clrscr;
for i:=1 to 79 do write('-');
gotoxy (1,2);write('|Фамилия  |Лабoр.          |Сам.    | Собесед. КО.П  Доп.баллы  Контр.раб. Сумма');
gotoxy (1,3); for i:=1 to 79 do write('-');
for i:=1 to n do
begin
gotoxy (1,i+3);write('|',x[i].fam);
gotoxy(11,i+3); begin write('|');   for j:=1 to 16 do write(x[i].lab[j]); end;
gotoxy(28,i+3); begin write('|');   for j:=1 to 8 do write(x[i].sam[j]); end;
gotoxy(37,i+3); begin write('|');   for j:=1 to 5 do write(x[i].cob[j]); end;
gotoxy(44,i+3); begin write('|');   for j:=1 to 6 do write(x[i].quiz[j]); end;

gotoxy(57,i+3);write('|');
gotoxy (58,i+3);write(x[i].sumlab);
gotoxy (60,i+3);write('|');
gotoxy (61,i+3);write(x[i].sumsam);
gotoxy (63,i+3);write('|');
gotoxy (64,i+3);write(x[i].sumcob);
gotoxy (66,i+3);write('|');
gotoxy (67,i+3);write(x[i].sumquiz);
gotoxy(69,i+3);write('|');
gotoxy (70,i+3);write (x[i].dop);
gotoxy (72,i+3);write('|');
gotoxy (73,i+3);write (x[i].itog);
gotoxy(75,i+3);write('|');
gotoxy(76,i+3);write(x[i].summa);
end;
gotoxy (1,14); for i:=1 to 79 do write('-');
end;

procedure soh (A:array[1..10] of student; h:text);
var i:integer; s:string;
begin
assign (h,'fail.txt');
rewrite (h);
for i:=1 to 10 do begin
writeln (h,A[i].fam,' - ',A[i].summa);
end;
close (h);
end;
begin
wwod(x,n);
wywod(x,n);

end.
