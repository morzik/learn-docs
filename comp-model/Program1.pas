uses crt;

  function f(x: Real): Real;
  begin
    f:=(3*Exp(2*x)-2*Sqr(x)-2*x-1)/2;
  end;

  function fxy(x, y: Real): Real;
  begin
    fxy:=2*Sqr(x)+2*y;
  end;

const
  x0=0;
  y0=1;
  h=0.1;
  n=11;
var
   x, ye, yem, z, yr, k1, k2, k3, k4: Real;
   i: Integer;
begin
  ClrScr;
  Writeln('x':3, 'y':10, 'Эйлер':15, 'Модиф. Эйлер':15, 'Рунге-Кутты':15);
  x:=x0;
  ye:=1;
  yem:=1;
  yr:=1;
  for i:=1 to n do
  begin
    Writeln
    (x:5:1, f(x):10:3, ye:13:3, yem:12:3, yr:15:3);
    {Эйлер}
    ye:=ye+h*fxy(x, ye);
    {Эйлер +}
    z:=fxy(x, yem);
    yem:=yem+h/2*(z+fxy(x, yem+h*z));
    {Рунге-Кутты}
    k1:=h*fxy(x, yr);
    k2:=h*fxy(x+h/2, yr+k1/2);
    k3:=h*fxy(x+h/2, yr+k2/2);
    k4:=h*fxy(x+h, yr+k3);
    yr:=yr+(k1+2*k2+2*k3+k4)/6;
    x:=x+h;
  end;
  Readkey;
end.