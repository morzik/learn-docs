program gr;
uses graphabc;
var xx,yy,kx,ky:integer;
    X, Y,y1,y2, h: real;
begin
{������� ������}
setwindowheight(400);
setwindowwidth(400);
{����� ������}
xx:=windowheight div 2;
yy:=windowwidth div 2;
{��� ���������}
line(0,yy,2*xx,yy);
line(xx,0,xx,2*yy);
{����������� ����}
textout(windowheight-10,yy+7,'X');
textout(xx-10,8,'Y');
textout(xx-10,yy+2,'0');
 {�������}
line(xx,0,xx+5,5);
line(xx,0,xx-5,5);
line(windowwidth,yy,windowwidth-5,yy-5);
line(windowwidth,yy,windowwidth-5,yy+5);
     {x ��[-5;5], ����� ������� 10}
kx:=windowwidth div 10;
{������� �� ��� ��}
line(xx+kx,yy-5,xx+kx,yy+5);
textout(xx+kx-5,yy+7,'1');
     {y ��[0;5], ����� ������� 5}
ky:=yy div 5;
{������� �� ��� �y}
line(xx-5,yy-ky,xx+5,yy-ky);
textout(xx-10,yy-ky-8,'1');

 h := 0.001;
 X := -5; {����� ����� ������� [-5;5]}
 while X <=  5 do begin
  Y := exp(x);
  PutPixel(round(X *kx+xx), round(yy-Y *ky), clblue);
  X := X + h;
 end;




 end.

