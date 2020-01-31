program gr;
uses graphabc;
var xx,yy:integer;
    X, Y,y1,y2, h,kx,ky,a,fi,u: real;
begin
a:=2;{петля строфоиды пересечет ось Ох в т.(-а;0)}
setwindowheight(400);
setwindowwidth(400);
xx:=windowheight div 2;
yy:=windowwidth div 2;
line(0,yy,2*xx,yy);
line(xx,0,xx,2*yy);
textout(windowheight-8,yy+2,'X');
 textout(xx-8,0,'Y');
 textout(xx-8,yy+2,'0');
{по х берем [-2.5;2.5], длина отрезка равна 5}
kx:=windowwidth/(5);

{по у берем [-5;5], длина отрезка равна 10}
ky:=windowheight/(10);

 h := 0.1;

 X := -2.5;
fi:=0;

 while X <=  2*pi do begin

u := sin(fi)/cos(fi);

x:=a*(u*u-1)/(u*u+1);
y:=x*u;

fi:=fi+h;

PutPixel(round(X *kx+xx), round(yy-Y *ky), clgreen);
end;
end.

