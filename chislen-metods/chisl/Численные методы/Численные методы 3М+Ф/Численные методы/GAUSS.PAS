program lab6;
uses crt;
    const n=4;
  type mass=array[1..10] of real;
       matr=array[1..10] of mass;
var   a:matr;
    b,x:mass;
      s:real;
    i,j:integer;



{---------  PRISWAIWANIE ----------------------}
procedure pris;
begin
a[1][1]:=1;    a[1][2]:=2;     a[1][3]:=1;     a[1][4]:=2;   b[1]:=-2;
a[2][1]:=2;   a[2][2]:=5;      a[2][3]:=4;   a[2][4]:=5;   b[2]:=-6;
a[3][1]:=1;    a[3][2]:=4;     a[3][3]:=6;   a[3][4]:=6;   b[3]:=15;
a[4][1]:=2;    a[4][2]:=5;     a[4][3]:=6;   a[4][4]:=10;   b[4]:=47;
end;

procedure wywod;
var i,j:integer;
begin
for i:=1 to n do  begin
 for j:=1 to n do write(a[i][j]:2:2,'   ');
 writeln;
 end;end;
{---------  GAUSS -----------------------}
procedure gauss;
var k:integer;
begin

{-----------pryamoy hod--------------}
for i:=1 to n-1 do
 begin
 for j:=i+1 to n do
  begin
   a[j][i]:=-a[j][i]/a[i][i];

    for k:=i+1 to n do
        a[j][k]:=a[j][k]+a[j][i]*a[i][k];

   b[j]:=b[j]+a[j][i]*b[i];
  end;
   end;

{-----------obratny hod--------------}
 x[n]:=b[n]/a[n][n];

 for i:=n-1 downto 1 do
begin
  s:=b[i];
  for j:=i+1 to n do s:=s-x[j]*a[i][j];
  x[i]:=s/a[i][i];
end;

writeln;
for i:=1 to n do  writeln ('x[',i,']=',x[i]:2:2);

end;

begin
 clrscr;
          pris;wywod;
          gauss;
end.