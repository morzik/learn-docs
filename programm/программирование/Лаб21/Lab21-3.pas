program upr;
uses crt;
{-----------------описание типов-----------------------}
type st=string[20];
data=record
day:1..31;
month:st;
year:integer;
end;
adress=record
index,town,street:st;
hause,flat:integer;
end;
pasp=record
fam,im,ot:st;
d:data;
ad:adress;
end;
anketa=record
pas:pasp;
p,nat:st;
end;
A=array [1..20] of anketa;
{-------------описание величин---------------------}
var X,Q:A;i,j,k,l,n:integer;
S,S1,S2:st;t,c,v,d:real;
{---------------Вывод таблицы -------------------}
procedure wywod(n:integer;h:A);
var i:integer;
begin
clrscr;
for i:=1 to 80 do write('-');
gotoxy (1,3);
for i:=1 to 80 do write('-');
gotoxy (1,2);write('|  Фамилия   |число месяц год |   город    |      улица        |дом-кв|');
for i:=1 to n do 
begin
gotoxy (1,i+3);write('|',h[i].pas.fam);
gotoxy (14,i+3);write('|',h[i].pas.d.day,' ',h[i].pas.d.month,' ',h[i].pas.d.year);
gotoxy (31,i+3);write('|',h[i].pas.ad.town);
gotoxy (44,i+3);write('|',h[i].pas.ad.street);
gotoxy (64,i+3);write('|',h[i].pas.ad.hause,'-',h[i].pas.ad.flat);
gotoxy(71,i+3);write('|');
end;
gotoxy(1,n+4);for i:=1 to 80 do write('-');
end;
{---------------------------------------------------------}
{------------------Присваивание значений--------------}
procedure priswaiwanie(var n:integer;var h:A);
begin n:=15;
h[1].pas.fam:='Иванов';
h[1].pas.im:='Иван';
h[1].pas.ot:='Иванович';
h[1].pas.d.day:=29;
h[1].pas.d.month:='август';
h[1].pas.d.year:=1971;
h[1].pas.ad.index:='123456';
h[1].pas.ad.town:='Иваново';
h[1].pas.ad.street:='Речная';
h[1].pas.ad.hause:=30;
h[1].pas.ad.flat:=36;
h[1].p:='м';
h[1].nat:='рус';
h[2].pas.fam:='Сопелкин';
h[2].pas.im:='Мартын';
h[2].pas.ot:='Иванович';
h[2].pas.d.day:=12;
h[2].pas.d.month:='март';
h[2].pas.d.year:=1921;
h[2].pas.ad.index:='150049';
h[2].pas.ad.town:='Ярославль';
h[2].pas.ad.street:='Свободы';
h[2].pas.ad.hause:=1;
h[2].pas.ad.flat:=161;
h[2].p:='м';
h[2].nat:='араб';
h[3].pas.fam:='Мовзон';
h[3].pas.im:='Марк';
h[3].pas.ot:='Юльевич';
h[3].pas.d.day:=1;
h[3].pas.d.month:='апрель';
h[3].pas.d.year:=1961;
h[3].pas.ad.index:='143111';
h[3].pas.ad.town:='Биробиджан';
h[3].pas.ad.street:='8 марта';
h[3].pas.ad.hause:=78;
h[3].pas.ad.flat:=54;
h[3].p:='м';
h[3].nat:='укр';
h[4].pas.fam:='Сопелкина';
h[4].pas.im:='Марина';
h[4].pas.ot:='Васильевна';
h[4].pas.d.day:=4;
h[4].pas.d.month:='январь';
h[4].pas.d.year:=1992;
h[4].pas.ad.index:='152046';
h[4].pas.ad.town:='Углич';
h[4].pas.ad.street:='Ленина';
h[4].pas.ad.hause:=67;
h[4].pas.ad.flat:=110;
h[4].p:='ж';
h[4].nat:='рус';
h[5].pas.fam:='Гайкина';
h[5].pas.im:='Зоя';
h[5].pas.ot:='Петровна';
h[5].pas.d.day:=10;
h[5].pas.d.month:='февраль';
h[5].pas.d.year:=1991;
h[5].pas.ad.index:='150049';
h[5].pas.ad.town:='Ярославль';
h[5].pas.ad.street:='Володарского';
h[5].pas.ad.hause:=1;
h[5].pas.ad.flat:=216;
h[5].p:='ж';
h[5].nat:='рус';
h[6].pas.fam:='Зюзикидзе';
h[6].pas.im:='Шота';
h[6].pas.ot:='Зурабович';
h[6].pas.d.day:=31;
h[6].pas.d.month:='май';
h[6].pas.d.year:=1999;
h[6].pas.ad.index:='152046';
h[6].pas.ad.town:='Углич';
h[6].pas.ad.street:='Ленина';
h[6].pas.ad.hause:=67;
h[6].pas.ad.flat:=110;
h[6].p:='м';
h[6].nat:='грузин';
h[7].pas.fam:='Аванесян';
h[7].pas.im:='Сона';
h[7].pas.ot:='Кареновна';
h[7].pas.d.day:=7;
h[7].pas.d.month:='май';
h[7].pas.d.year:=1987;
h[7].pas.ad.index:='435211';
h[7].pas.ad.town:='Ереван';
h[7].pas.ad.street:='Нур ареш';
h[7].pas.ad.hause:=67;
h[7].pas.ad.flat:=96;
h[7].p:='ж';
h[7].nat:='армянка';
h[8].pas.fam:='Гайкина';
h[8].pas.im:='Алла';
h[8].pas.ot:='Петровна';
h[8].pas.d.day:=10;
h[8].pas.d.month:='февраль';
h[8].pas.d.year:=1991;
h[8].pas.ad.index:='150049';
h[8].pas.ad.town:='Ярославль';
h[8].pas.ad.street:='Володарского';
h[8].pas.ad.hause:=1;
h[8].pas.ad.flat:=216;
h[8].p:='ж';
h[8].nat:='рус';
h[9].pas.fam:='Иванов';
h[9].pas.im:='Иван';
h[9].pas.ot:='Иванович';
h[9].pas.d.day:=24;
h[9].pas.d.month:='декабрь';
h[9].pas.d.year:=1991;
h[9].pas.ad.index:='546803';
h[9].pas.ad.town:='Сочи';
h[9].pas.ad.street:='Просвещения';
h[9].pas.ad.hause:=73;
h[9].pas.ad.flat:=59;
h[9].p:='м';
h[9].nat:='рус';
h[10].pas.fam:='Задорнов';
h[10].pas.im:='Михаил';
h[10].pas.ot:='Николаевич';
h[10].pas.d.day:=11;
h[10].pas.d.month:='март';
h[10].pas.d.year:=1951;
h[10].pas.ad.index:='150049';
h[10].pas.ad.town:='Рига';
h[10].pas.ad.street:='Б.Морская';
h[10].pas.ad.hause:=73;
h[10].pas.ad.flat:=55;
h[10].p:='м';
h[10].nat:='рус';
h[11].pas.fam:='Недопечко';
h[11].pas.im:='Мыкола';
h[11].pas.ot:='Мыколаевич';
h[11].pas.d.day:=1;
h[11].pas.d.month:='апрель';
h[11].pas.d.year:=1938;
h[11].pas.ad.index:='150000';
h[11].pas.ad.town:='Ярославль';
h[11].pas.ad.street:='Свободы';
h[11].pas.ad.hause:=1;
h[11].pas.ad.flat:=161;
h[11].p:='м';
h[11].nat:='укр';
h[12].pas.fam:='Жеглов';
h[12].pas.im:='Глеб';
h[12].pas.ot:='Егорович';
h[12].pas.d.day:=25;
h[12].pas.d.month:='январь';
h[12].pas.d.year:=1919;
h[12].pas.ad.index:='100066';
h[12].pas.ad.town:='Москва';
h[12].pas.ad.street:='Петровка';
h[12].pas.ad.hause:=38;
h[12].pas.ad.flat:=13;
h[12].p:='¦м';
h[12].nat:='рус';
h[13].pas.fam:='Собакин';
h[13].pas.im:='Артем';
h[13].pas.ot:='Алексеевич';
h[13].pas.d.day:=21;
h[13].pas.d.month:='июнь';
h[13].pas.d.year:=1985;
h[13].pas.ad.index:='435112';
h[13].pas.ad.town:='Ереван';
h[13].pas.ad.street:='Нур ареш';
h[13].pas.ad.hause:=67;
h[13].pas.ad.flat:=96;
h[13].p:='м';
h[13].nat:='рус';
h[14].pas.fam:='Булкина';
h[14].pas.im:='Галина';
h[14].pas.ot:='Сергеевна';
h[14].pas.d.day:=5;
h[14].pas.d.month:='декабрь';
h[14].pas.d.year:=1988;
h[14].pas.ad.index:='546278';
h[14].pas.ad.town:='Киев';
h[14].pas.ad.street:='Крещатик';
h[14].pas.ad.hause:=97;
h[14].pas.ad.flat:=117;
h[14].p:='рус';
h[14].nat:='укр';
h[15].pas.fam:='Тяхт';
h[15].pas.im:='Густав';
h[15].pas.ot:='Павлович';
h[15].pas.d.day:=29;
h[15].pas.d.month:='октябрь';
h[15].pas.d.year:=1974;
h[15].pas.ad.index:='435191';
h[15].pas.ad.town:='Ереван';
h[15].pas.ad.street:='Ленина';
h[15].pas.ad.hause:=76;
h[15].pas.ad.flat:=1;
h[15].p:='м';
h[15].nat:='эстонец';
end;

procedure srvozrast (y:A; t:integer; var q:real);
var i,k,s,m:integer;
begin
k:=2018;
s:=0;
for i:=1 to t do
begin
m:=k-y[i].pas.d.year;
s:=s+m;
end;
q:=s/15;end;

procedure dlfam (t:integer; y:A; var k:integer);
var i:integer;
begin
k:=length(y[1].pas.fam);
for i:=2 to t do
    if length(y[i].pas.fam)>k then k:=length(y[i].pas.fam)
end;

procedure tezki (t:integer; y:A; var w:A; var q:integer);
var i,j:integer;
g:set of 1..100;
begin
q:=0;
g:=[];
for i:=1 to t do
for j:=1 to t do
if (i<>j)and(y[i].pas.im=y[j].pas.im) and (y[i].pas.ot=y[j].pas.ot) then g:=g+[i]+[j];
for i:=1 to t do
if (i in g) then
begin
q:=q+1;
w[q]:=y[i];
end;
end;

begin
priswaiwanie(k,X);
wywod(k,X);
//srvozrast(X,k,t);
//writeln('Средний возраст ',trunc(t));
//sdlfam(k,X,Q,l);
//wywod(l,Q);
tezki(k,X,Q,l);
writeln(l);
if l>0 then wywod(l,Q) else writeln('Тезок нет');
end.