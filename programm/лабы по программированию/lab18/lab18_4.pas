program lab18_2;
uses crt;
type uch=record
     fam,im,sp:string[20];
     gr,gs,got:1..9999;
     ot:string[255];
     st:string[40];
     end;
     FileUch=file of uch;
     arr=array[1..20] of uch;

var science:FileUch; A,A1:arr; i,i1,n,k:integer;

procedure centery19(h:arr; t:integer; var h1:arr; var kolnm:integer);
var i:integer;
begin
kolnm:=0;
for i:=1 to t do
if (h[i].gr>=1800) and (h[i].gr<1900) then begin
kolnm:=kolnm+1;
h1[kolnm]:=h[i];
end;
end;


procedure wwod(var h:arr;var t:integer);
var i:integer;
begin
assign(science,'SCIENCE');
reset(science);
t:=0;
while not(eof(science)) do begin
      t:=t+1;
      read(science,h[t]);
      writeln(h[t].fam);
      end;
close(science);
end;

procedure wywod(kol:integer;mass:arr);
var i:integer;
begin
clrscr;
for i:=1 to 80 do
write('-');
gotoxy(3,2); write('| ������� ');
gotoxy(21,2); write('|');
gotoxy(1,3);
for i:=1 to 80 do
write('-');
{����� �������}
for i:=1 to kol do begin
gotoxy(3,i+3);
write('| ',mass[i].fam,' ',copy(mass[i].im,1,1),'.');
gotoxy(21,i+3); write('|');
end;
gotoxy(22,2); write('���� �����');
gotoxy(32,2); write('|');
for i:=1 to kol do begin
gotoxy(22,i+3);
write(mass[i].gr,'-',mass[i].gs);
gotoxy(32,i+3); write('|');
end;
gotoxy(33,2); write('������');
gotoxy(42,2); write('|');
for i:=1 to kol do begin
gotoxy(33,i+3);
write(mass[i].st);
gotoxy(42,i+3); write('|');
end;
gotoxy(43,2); write('��������');
gotoxy(68,2); write('|');
for i:=1 to kol do begin
gotoxy(43,i+3);
write(copy(mass[i].ot,1,24));
gotoxy(68,i+3); write('|');
end;
gotoxy(69,2); write('��� ���');
gotoxy(76,2); write('|');
for i:=1 to kol do begin
gotoxy(69,i+3);
write(mass[i].got);
gotoxy(76,i+3); write('|');
end;
end;


begin
wwod(A,i);
centery19(A,i,A1,i1);
wywod(i1,A1);
end.
