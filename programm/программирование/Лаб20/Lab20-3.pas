program  upr;
uses crt;
{-----------------�������� �����-----------------------}
type 
ocenka=record
ekz:array[1..6] of integer;
zach1,zach2:string;
end;
student=record
fam,im,ot:string;
stip:integer;
end;
vedomost=record
ocen:ocenka;
stud:student;
end;
A=array [1..20] of vedomost;
{-------------�������� ����������---------------------}
var X,Q:A;
i,j,k,l,n:integer;
S,S1,S2:string;
t,c,v,d:real;
{------------------������������ -------------------------}
procedure wwod_vedom (var o:vedomost);
begin
write('������� �������                ');readln(o.stud.fam);
write('������� ���                    ');readln(o.stud.im);
write('������� ��������               ');readln(o.stud.ot);
write('������� ������ �� 1 �������    ');readln(o.ocen.ekz[1]);
write('������� ������ �� 2 �������    ');readln(o.ocen.ekz[2]);
write('������� ������ �� 3 �������    ');readln(o.ocen.ekz[3]);
write('������� ������ �� 4 �������    ');readln(o.ocen.ekz[4]);
write('������� ������ �� 5 �������    ');readln(o.ocen.ekz[5]);
write('������� ������ �� 6 �������    ');readln(o.ocen.ekz[6]);
write('������� ������ �� 1 �����      ');readln(o.ocen.zach1);
write('������� ������ �� 2 �����      ');readln(o.ocen.zach2);
end;
{-----------------------------------------------------------}
procedure wwod(var x:A);
var i:integer;
begin
write('n=');readln(n);
for i:=1 to n do begin
clrscr;
wwod_vedom(x[i]) end;end;
{-----------------------------------------------------------}
{---------------������ ��������-------------------}
procedure wywod(n:integer;h:A);
var i:integer;
begin
clrscr;
for i:=1 to 80 do write('-');
gotoxy (1,4);
for i:=1 to 80 do write('-');
gotoxy (1,2);write('|   �������    |    ���������� ���������     |    ����� �������    |           |');
gotoxy (1,3);write('|   ��������   |1���|2���|3���|4���|5���|6���| 1 �����  |2  �����  | ��������� |');
for i:=1 to n do 
begin
gotoxy (1,i+4);write('| ',h[i].stud.fam,' ',h[i].stud.im[1],'.',h[i].stud.ot[1],'.');
gotoxy (16,i+4);write('| ',h[i].ocen.ekz[1]);
gotoxy (21,i+4);write('| ',h[i].ocen.ekz[2]);
gotoxy (26,i+4);write('| ',h[i].ocen.ekz[3]);
gotoxy (31,i+4);write('| ',h[i].ocen.ekz[4]);
gotoxy (36,i+4);write('| ',h[i].ocen.ekz[5]);
gotoxy (41,i+4);write('| ',h[i].ocen.ekz[6]);
gotoxy (46,i+4);write('|',h[i].ocen.zach1);
gotoxy (57,i+4);write('|',h[i].ocen.zach2);
gotoxy (68,i+4);write('|',h[i].stud.stip,' ���.');
gotoxy (80,i+4);write('|');
end;
gotoxy(1,n+5);for i:=1 to 80 do write('-');
end;
{---------------------------------------------------------}
{--------------------------------}
procedure priswaiwanie(var h:A);
begin n:=15;
h[1].stud.fam:='��������';
h[1].stud.im:='�����';
h[1].stud.ot:='����������';
h[1].ocen.ekz[1]:=3;
h[1].ocen.ekz[2]:=4;
h[1].ocen.ekz[3]:=2;
h[1].ocen.ekz[4]:=3;
h[1].ocen.ekz[5]:=3;
h[1].ocen.ekz[6]:=2;
h[1].ocen.zach1:='�������';
h[1].ocen.zach2:='�������';
h[2].stud.fam:='������';
h[2].stud.im:='�������';
h[2].stud.ot:='�������������';
h[2].ocen.ekz[1]:=4;
h[2].ocen.ekz[2]:=4;
h[2].ocen.ekz[3]:=5;
h[2].ocen.ekz[4]:=3;
h[2].ocen.ekz[5]:=3;
h[2].ocen.ekz[6]:=4;
h[2].ocen.zach1:='�������';
h[2].ocen.zach2:='�������';
h[3].stud.fam:='��������';
h[3].stud.im:='�����';
h[3].stud.ot:='����������';
h[3].ocen.ekz[1]:=3;
h[3].ocen.ekz[2]:=3;
h[3].ocen.ekz[3]:=2;
h[3].ocen.ekz[4]:=2;
h[3].ocen.ekz[5]:=2;
h[3].ocen.ekz[6]:=2;
h[3].ocen.zach1:='�������';
h[3].ocen.zach2:='�� �������';
h[4].stud.fam:='�������';
h[4].stud.im:='�������';
h[4].stud.ot:='�������������';
h[4].ocen.ekz[1]:=4;
h[4].ocen.ekz[2]:=4;
h[4].ocen.ekz[3]:=5;
h[4].ocen.ekz[4]:=5;
h[4].ocen.ekz[5]:=5;
h[4].ocen.ekz[6]:=4;
h[4].ocen.zach1:='�������';
h[4].ocen.zach2:='�������';
h[5].stud.fam:='�������';
h[5].stud.im:='�����';
h[5].stud.ot:='����������';
h[5].ocen.ekz[1]:=4;
h[5].ocen.ekz[2]:=4;
h[5].ocen.ekz[3]:=4;
h[5].ocen.ekz[4]:=4;
h[5].ocen.ekz[5]:=4;
h[5].ocen.ekz[6]:=4;
h[5].ocen.zach1:='�������';
h[5].ocen.zach2:='�������';
h[6].stud.fam:='��������';
h[6].stud.im:='���������';
h[6].stud.ot:='��������';
h[6].ocen.ekz[1]:=3;
h[6].ocen.ekz[2]:=3;
h[6].ocen.ekz[3]:=3;
h[6].ocen.ekz[4]:=3;
h[6].ocen.ekz[5]:=3;
h[6].ocen.ekz[6]:=3;
h[6].ocen.zach1:='�������';
h[6].ocen.zach2:='�� �������';
h[7].stud.fam:='�������';
h[7].stud.im:='������';
h[7].stud.ot:='���������';
h[7].ocen.ekz[1]:=5;
h[7].ocen.ekz[2]:=5;
h[7].ocen.ekz[3]:=5;
h[7].ocen.ekz[4]:=5;
h[7].ocen.ekz[5]:=5;
h[7].ocen.ekz[6]:=5;
h[7].ocen.zach1:='�������';
h[7].ocen.zach2:='�������';
h[8].stud.fam:='��������';
h[8].stud.im:='�������';
h[8].stud.ot:='���������';
h[8].ocen.ekz[1]:=3;
h[8].ocen.ekz[2]:=2;
h[8].ocen.ekz[3]:=3;
h[8].ocen.ekz[4]:=2;
h[8].ocen.ekz[5]:=3;
h[8].ocen.ekz[6]:=4;
h[8].ocen.zach1:='�������';
h[8].ocen.zach2:='�������';
h[9].stud.fam:='������';
h[9].stud.im:='�����';
h[9].stud.ot:='����������';
h[9].ocen.ekz[1]:=5;
h[9].ocen.ekz[2]:=4;
h[9].ocen.ekz[3]:=4;
h[9].ocen.ekz[4]:=5;
h[9].ocen.ekz[5]:=5;
h[9].ocen.ekz[6]:=5;
h[9].ocen.zach1:='�������';
h[9].ocen.zach2:='�� �������';
h[15].stud.fam:='���������';
h[15].stud.im:='�������';
h[15].stud.ot:='���������';
h[15].ocen.ekz[1]:=4;
h[15].ocen.ekz[2]:=3;
h[15].ocen.ekz[3]:=3;
h[15].ocen.ekz[4]:=3;
h[15].ocen.ekz[5]:=3;
h[15].ocen.ekz[6]:=4;
h[15].ocen.zach1:='�� �������';
h[15].ocen.zach2:='�������';
h[11].stud.fam:='��������';
h[11].stud.im:='��������';
h[11].stud.ot:='����������';
h[11].ocen.ekz[1]:=2;
h[11].ocen.ekz[2]:=2;
h[11].ocen.ekz[3]:=3;
h[11].ocen.ekz[4]:=2;
h[11].ocen.ekz[5]:=3;
h[11].ocen.ekz[6]:=3;
h[11].ocen.zach1:='�������';
h[11].ocen.zach2:='�������';
h[12].stud.fam:='������';
h[12].stud.im:='���������';
h[12].stud.ot:='����������';
h[12].ocen.ekz[1]:=5;
h[12].ocen.ekz[2]:=4;
h[12].ocen.ekz[3]:=3;
h[12].ocen.ekz[4]:=4;
h[12].ocen.ekz[5]:=5;
h[12].ocen.ekz[6]:=4;
h[12].ocen.zach1:='�������';
h[12].ocen.zach2:='�� �������';
h[13].stud.fam:='���';
h[13].stud.im:='�����';
h[13].stud.ot:='����������';
h[13].ocen.ekz[1]:=3;
h[13].ocen.ekz[2]:=3;
h[13].ocen.ekz[3]:=2;
h[13].ocen.ekz[4]:=2;
h[13].ocen.ekz[5]:=2;
h[13].ocen.ekz[6]:=3;
h[13].ocen.zach1:='�������';
h[13].ocen.zach2:='�������';
h[14].stud.fam:='�����';
h[14].stud.im:='�������';
h[14].stud.ot:='������������';
h[14].ocen.ekz[1]:=3;
h[14].ocen.ekz[2]:=2;
h[14].ocen.ekz[3]:=3;
h[14].ocen.ekz[4]:=3;
h[14].ocen.ekz[5]:=4;
h[14].ocen.ekz[6]:=3;
h[14].ocen.zach1:='�������';
h[14].ocen.zach2:='�� �������';
h[10].stud.fam:='�������';
h[10].stud.im:='������';
h[10].stud.ot:='������������';
h[10].ocen.ekz[1]:=2;
h[10].ocen.ekz[2]:=2;
h[10].ocen.ekz[3]:=3;
h[10].ocen.ekz[4]:=3;
h[10].ocen.ekz[5]:=2;
h[10].ocen.ekz[6]:=2;
h[10].ocen.zach1:='�������';
h[10].ocen.zach2:='�� �������';
end;
procedure srbalst(s:vedomost;var q:real);
          var i,sr:integer;
          begin
               q:=0;
               sr:=0;
               for i:=1 to 6 do sr:=sr+s.ocen.ekz[i];
               q:=sr/6;
          end;
          
procedure srbal(y:A; var m:real);
var i:integer;
t:real;
begin
m:=0;
for i:=1 to 15 do
    begin
    srbalst(y[i],t);
    m:=m+t;
    end;
m:=m/15;
end;


procedure stipendiya(y:A; var z:A);
var t:real; i:integer;
begin
for i:=1 to 15 do
begin
srbalst(y[i],t);
if (y[i].ocen.zach1='�������') and (y[i].ocen.zach2='�������') then
   if (t>=4) and (t<4.5) then z[i].stud.stip:=1000 else
      if (t>=4.5) and (t<5) then z[i].stud.stip:=1250 else
         if t=5 then z[i].stud.stip:=1500;
end;
end;


//�������� ���������
begin
 priswaiwanie(x);
 srbal(X,t);
 write('������� ��� ������ ',t);
 stipendiya(X,X);
 wywod(15,x);
end.


