program gr;
uses graphabc;
var xx,yy:integer;
    X, Y,y1,y2, h,kx,ky: real;
begin
setwindowheight(400);
setwindowwidth(400);
xx:=windowheight div 2;
yy:=windowwidth div 2;
line(0,yy,2*xx,yy);
line(xx,0,xx,2*yy);
textout(windowheight-8,yy+2,'X');
 textout(xx-8,0,'Y');
 textout(xx-8,yy+2,'0');
{по х берем [-2pi;2pi], длина отрезка равна 4pi}
kx:=windowwidth/(4*pi);

{по у берем [-3;3], длина отрезка равна 6}
ky:=windowheight/(6);

 h := 0.0001;

 X := -2*pi;

 while X <=  2*pi do begin

 Y := sin(x);

PutPixel(round(X *kx+xx), round(yy-Y *ky), clgreen);


 X := X + h;

 end;


 end.

