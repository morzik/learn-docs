program lab19_4;
uses crt;
type student=record
fam:string[255];
lr:array [1..16] of integer;
sr:array [1..8] of integer;
cob:array [1..5] of integer;
kr:array [1..6] of integer;
dop:integer;
summa,sumlr,sumsr,sumcob,sumkr,sumdop,sumkri:integer;
kri:integer;
end;
A=array[1..10] of student;
B=array[1..10] of integer;
var i,n:integer; f:text;
X:A;
ssr,slr,scob,skr,ssumma: B;

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
x[i].sumlr:=0;
for j:=1 to 16 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].lr[j],p);
delete(a,1,d);
x[i].sumlr:=x[i].sumlr+x[i].lr[j];
end;
x[i].sumsr:=0;
for j:=1 to 8 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].sr[j],p);
delete(a,1,d);
x[i].sumsr:=x[i].sumsr+x[i].sr[j];
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
x[i].sumkr:=0;
for j:=1 to 6 do
begin
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].kr[j],p);
delete(a,1,d);
x[i].sumkr:=x[i].sumkr+x[i].kr[j];
end;
d:=pos(',',a);
s:=copy(a,1,d-1);
val(s,x[i].dop,p);
delete(a,1,d);
val(a,x[i].kri,p);
end;
n:=i;
close(f);
for i:=1 to n do
x[i].summa:=x[i].sumlr+x[i].sumsr+x[i].sumcob+x[i].sumkr+x[i].dop+x[i].kri;
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
gotoxy(11,i+3); begin write('|');   for j:=1 to 16 do write(x[i].lr[j]); end;
gotoxy(28,i+3); begin write('|');   for j:=1 to 8 do write(x[i].sr[j]); end;
gotoxy(37,i+3); begin write('|');   for j:=1 to 5 do write(x[i].cob[j]); end;
gotoxy(44,i+3); begin write('|');   for j:=1 to 6 do write(x[i].kr[j]); end;

gotoxy(57,i+3);write('|');
gotoxy (58,i+3);write(x[i].sumlr);
gotoxy (60,i+3);write('|');
gotoxy (61,i+3);write(x[i].sumsr);
gotoxy (63,i+3);write('|');
gotoxy (64,i+3);write(x[i].sumcob);
gotoxy (66,i+3);write('|');
gotoxy (67,i+3);write(x[i].sumkr);
gotoxy(69,i+3);write('|');
gotoxy (70,i+3);write (x[i].dop);
gotoxy (72,i+3);write('|');
gotoxy (73,i+3);write (x[i].kri);
gotoxy(75,i+3);write('|');
gotoxy(76,i+3);write(x[i].summa);
end;
gotoxy (1,14); for i:=1 to 79 do write('-');
end;

procedure soh (MASS:A; h:text);
var i:integer; s:string;
begin
assign (h,'fail.txt');
rewrite (h);
for i:=1 to 10 do begin
writeln (h,MASS[i].fam,' - ',MASS[i].summa);
end;
close (h);
end;
begin
wwod(x,n);
wywod(x,n);

end.
