program upr;
uses crt;
{-----------------�������� �����-----------------------}
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
{-------------�������� �������---------------------}
var X,Q:A;i,j,k,l,n:integer;
S,S1,S2:st;t,c,v,d:real;
{---------------����� ��������-------------------}
procedure wywod(n:integer;h:A);
var i:integer;
begin
clrscr;
for i:=1 to 80 do write('-');
gotoxy (1,3);
for i:=1 to 80 do write('-');
gotoxy (1,2);write('|  �������   |����� ����� ��� |   �����    |      �����        |���-��|');
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
{------------------������������ ��������--------------}
procedure priswaiwanie(var n:integer;var h:A);
begin n:=15;
h[1].pas.fam:='������';
h[1].pas.im:='����';
h[1].pas.ot:='��������';
h[1].pas.d.day:=29;
h[1].pas.d.month:='������';
h[1].pas.d.year:=1971;
h[1].pas.ad.index:='123456';
h[1].pas.ad.town:='�������';
h[1].pas.ad.street:='������';
h[1].pas.ad.hause:=30;
h[1].pas.ad.flat:=36;
h[1].p:='�';
h[1].nat:='���';
h[2].pas.fam:='��������';
h[2].pas.im:='������';
h[2].pas.ot:='��������';
h[2].pas.d.day:=12;
h[2].pas.d.month:='����';
h[2].pas.d.year:=1921;
h[2].pas.ad.index:='150049';
h[2].pas.ad.town:='���������';
h[2].pas.ad.street:='�������';
h[2].pas.ad.hause:=1;
h[2].pas.ad.flat:=161;
h[2].p:='�';
h[2].nat:='����';
h[3].pas.fam:='������';
h[3].pas.im:='����';
h[3].pas.ot:='�������';
h[3].pas.d.day:=1;
h[3].pas.d.month:='������';
h[3].pas.d.year:=1961;
h[3].pas.ad.index:='143111';
h[3].pas.ad.town:='����������';
h[3].pas.ad.street:='8 �����';
h[3].pas.ad.hause:=78;
h[3].pas.ad.flat:=54;
h[3].p:='�';
h[3].nat:='���';
h[4].pas.fam:='���������';
h[4].pas.im:='������';
h[4].pas.ot:='����������';
h[4].pas.d.day:=4;
h[4].pas.d.month:='������';
h[4].pas.d.year:=1992;
h[4].pas.ad.index:='152046';
h[4].pas.ad.town:='�����';
h[4].pas.ad.street:='������';
h[4].pas.ad.hause:=67;
h[4].pas.ad.flat:=110;
h[4].p:='�';
h[4].nat:='���';
h[5].pas.fam:='�������';
h[5].pas.im:='���';
h[5].pas.ot:='��������';
h[5].pas.d.day:=10;
h[5].pas.d.month:='�������';
h[5].pas.d.year:=1991;
h[5].pas.ad.index:='150049';
h[5].pas.ad.town:='���������';
h[5].pas.ad.street:='������������';
h[5].pas.ad.hause:=1;
h[5].pas.ad.flat:=216;
h[5].p:='�';
h[5].nat:='���';
h[6].pas.fam:='���������';
h[6].pas.im:='����';
h[6].pas.ot:='���������';
h[6].pas.d.day:=31;
h[6].pas.d.month:='���';
h[6].pas.d.year:=1999;
h[6].pas.ad.index:='152046';
h[6].pas.ad.town:='�����';
h[6].pas.ad.street:='������';
h[6].pas.ad.hause:=67;
h[6].pas.ad.flat:=110;
h[6].p:='�';
h[6].nat:='������';
h[7].pas.fam:='��������';
h[7].pas.im:='����';
h[7].pas.ot:='���������';
h[7].pas.d.day:=7;
h[7].pas.d.month:='���';
h[7].pas.d.year:=1987;
h[7].pas.ad.index:='435211';
h[7].pas.ad.town:='������';
h[7].pas.ad.street:='��� ����';
h[7].pas.ad.hause:=67;
h[7].pas.ad.flat:=96;
h[7].p:='�';
h[7].nat:='�������';
h[8].pas.fam:='�������';
h[8].pas.im:='����';
h[8].pas.ot:='��������';
h[8].pas.d.day:=10;
h[8].pas.d.month:='�������';
h[8].pas.d.year:=1991;
h[8].pas.ad.index:='150049';
h[8].pas.ad.town:='���������';
h[8].pas.ad.street:='������������';
h[8].pas.ad.hause:=1;
h[8].pas.ad.flat:=216;
h[8].p:='�';
h[8].nat:='���';
h[9].pas.fam:='������';
h[9].pas.im:='����';
h[9].pas.ot:='��������';
h[9].pas.d.day:=24;
h[9].pas.d.month:='�������';
h[9].pas.d.year:=1991;
h[9].pas.ad.index:='546803';
h[9].pas.ad.town:='����';
h[9].pas.ad.street:='�����������';
h[9].pas.ad.hause:=73;
h[9].pas.ad.flat:=59;
h[9].p:='�';
h[9].nat:='���';
h[10].pas.fam:='��������';
h[10].pas.im:='������';
h[10].pas.ot:='����������';
h[10].pas.d.day:=11;
h[10].pas.d.month:='����';
h[10].pas.d.year:=1951;
h[10].pas.ad.index:='150049';
h[10].pas.ad.town:='����';
h[10].pas.ad.street:='�.�������';
h[10].pas.ad.hause:=73;
h[10].pas.ad.flat:=55;
h[10].p:='�';
h[10].nat:='���';
h[11].pas.fam:='���������';
h[11].pas.im:='������';
h[11].pas.ot:='����������';
h[11].pas.d.day:=1;
h[11].pas.d.month:='������';
h[11].pas.d.year:=1938;
h[11].pas.ad.index:='150000';
h[11].pas.ad.town:='���������';
h[11].pas.ad.street:='�������';
h[11].pas.ad.hause:=1;
h[11].pas.ad.flat:=161;
h[11].p:='�';
h[11].nat:='���';
h[12].pas.fam:='������';
h[12].pas.im:='����';
h[12].pas.ot:='��������';
h[12].pas.d.day:=25;
h[12].pas.d.month:='������';
h[12].pas.d.year:=1919;
h[12].pas.ad.index:='100066';
h[12].pas.ad.town:='������';
h[12].pas.ad.street:='��������';
h[12].pas.ad.hause:=38;
h[12].pas.ad.flat:=13;
h[12].p:='��';
h[12].nat:='���';
h[13].pas.fam:='�������';
h[13].pas.im:='�����';
h[13].pas.ot:='����������';
h[13].pas.d.day:=21;
h[13].pas.d.month:='����';
h[13].pas.d.year:=1985;
h[13].pas.ad.index:='435112';
h[13].pas.ad.town:='������';
h[13].pas.ad.street:='��� ����';
h[13].pas.ad.hause:=67;
h[13].pas.ad.flat:=96;
h[13].p:='�';
h[13].nat:='���';
h[14].pas.fam:='�������';
h[14].pas.im:='������';
h[14].pas.ot:='���������';
h[14].pas.d.day:=5;
h[14].pas.d.month:='�������';
h[14].pas.d.year:=1988;
h[14].pas.ad.index:='546278';
h[14].pas.ad.town:='����';
h[14].pas.ad.street:='��������';
h[14].pas.ad.hause:=97;
h[14].pas.ad.flat:=117;
h[14].p:='���';
h[14].nat:='���';
h[15].pas.fam:='����';
h[15].pas.im:='������';
h[15].pas.ot:='��������';
h[15].pas.d.day:=29;
h[15].pas.d.month:='�������';
h[15].pas.d.year:=1974;
h[15].pas.ad.index:='435191';
h[15].pas.ad.town:='������';
h[15].pas.ad.street:='������';
h[15].pas.ad.hause:=76;
h[15].pas.ad.flat:=1;
h[15].p:='�';
h[15].nat:='�������';
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
//writeln('������� ������� ',trunc(t));
//sdlfam(k,X,Q,l);
//wywod(l,Q);
tezki(k,X,Q,l);
writeln(l);
if l>0 then wywod(l,Q) else writeln('����� ���');
end.