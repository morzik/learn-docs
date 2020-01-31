program gr;
uses graphabc;
var xx,yy,kx,ky:integer;
    X, Y,y1,y2, h: real;
begin
{размеры экрана}
setwindowheight(400);
setwindowwidth(400);
{центр экрана}
xx:=windowheight div 2;
yy:=windowwidth div 2;
{оси координат}
line(0,yy,2*xx,yy);
line(xx,0,xx,2*yy);
{обозначения осей}
textout(windowheight-10,yy+7,'X');
textout(xx-10,8,'Y');
textout(xx-10,yy+2,'0');
 {стрелки}
line(xx,0,xx+5,5);
line(xx,0,xx-5,5);
line(windowwidth,yy,windowwidth-5,yy-5);
line(windowwidth,yy,windowwidth-5,yy+5);
     {x на[-5;5], длина отрезка 10}
kx:=windowwidth div 10;
{единица по оси Ох}
line(xx+kx,yy-5,xx+kx,yy+5);
textout(xx+kx-5,yy+7,'1');
     {y на[0;5], длина отрезка 5}
ky:=yy div 5;
{единица по оси Оy}
line(xx-5,yy-ky,xx+5,yy-ky);
textout(xx-10,yy-ky-8,'1');

 h := 0.001;
 X := -5; {левый конец отрезка [-5;5]}
 while X <=  5 do begin
  Y := exp(x);
  PutPixel(round(X *kx+xx), round(yy-Y *ky), clblue);
  X := X + h;
 end;




 end.

