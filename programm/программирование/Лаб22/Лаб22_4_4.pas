program lab10;
uses crt;

type uch=record
  fam,im,spec:string[20];
  yb,yd,yo:1..1999;
  inv:string[255];
  coun:string[40]
  end;
  mass=array[1..20] of uch;

var X:mass;
i,N,k:integer;
s,s1:string[20];
f:file of uch;
g:text;

{---------------Вывод таблицы -------------------}
procedure wywod(n:integer;h:mass);
var i:integer;
begin
clrscr;
for i:=1 to 80 do write('-');
gotoxy (1,3);
for i:=1 to 80 do write('-');
gotoxy (1,2);write('|     Фамилия И.    |Годы жизни| Страна  |        Открытие         |Год |Прожил|');
for i:=1 to n do
begin
gotoxy (1,i+3);write('| ',h[i].fam,' ',h[i].im[1],'.');
gotoxy (21,i+3);write('|',h[i].yb,'-',h[i].yd);
gotoxy (32,i+3);write('|',h[i].coun);
gotoxy (42,i+3);write('|',h[i].inv);
gotoxy (68,i+3);write('|',h[i].yo);
gotoxy (73,i+3);write('|',h[i].yd-h[i].yb,' г. |');

end;
gotoxy(1,n+4);for i:=1 to 80 do write('-');
end;

procedure SOVET(n:integer;h:mass; var q:integer; var w:mass);
var i:integer;
begin
q:=0;
for i:=1 to n do
    if h[i].spec='физика' then
    begin
    inc(q);
    w[q]:=h[i];
    end;
end;

begin
clrscr;
assign(f,'sciense');
reset(f);
n:=0;
while not(eof(f)) do
      begin
      n:=n+1;
      read(f,x[n]);
      end;

SOVET(n,X,k,X);
wywod(k,x);
close(f);


end.