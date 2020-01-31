program lab6;
uses crt;
    const n=4;
  type mass=array[1..10] of real;
       matr=array[1..10] of mass;
var   a:matr;
    b,x:mass;
      s,p:real;
    i,j:integer;


{---------  WWOD  -----------------------}
{procedure wwod;
begin
for i:=1 to n do
begin
 for j:=1 to n do
  begin
   write('a[',i,',',j,']=');
   readln(a[i,j]);
  end;
 write('b[',i,']=');readln(b[i]);
end;

end; }

{---------  PRISWAIWANIE ----------------------}
procedure pris;
begin
a[1][1]:=1; a[1][2]:=2; a[1][3]:=4; a[1][4]:=0; b[1]:=99;
a[2][1]:=2; a[2][2]:=8; a[2][3]:=8; a[2][4]:=4; b[2]:=182;
a[3][1]:=4; a[3][2]:=8; a[3][3]:=25;a[3][4]:=-3;b[3]:=519;
a[4][1]:=0; a[4][2]:=4; a[4][3]:=-3;a[4][4]:=21;b[4]:=-185;
end;
{---------- WIWOD----------------------}
procedure wiwod(n:integer; a:matr);
var i,j:integer;
begin
    for i:=1 to n do begin
    for j:=1 to n do write('  ',a[i][j]);
             writeln end;
end;
{---------  GAUSS -----------------------}
procedure gauss;
var k,i,j:integer;c:real;
begin

{-----------pryamoy hod--------------}
for k:=1 to n-1 do
 begin
 for i:=k+1 to n do
  begin
      c:=a[i][k]/a[k][k];
      a[i][k]:=0;
      for j := k+1 to n do
      begin
        a[i][ j] := a[i][ j] - c * a[k][ j];
      end;
      b[i] := b[i] - c * b[k];

   end;
   end;
 wiwod(n,a);
{--------opred--------------}
p:=1;
for i:=1 to n do
  p:=p*a[i][i];

{-----------obratny hod--------------}
 x[n]:=b[n]/a[n][n] ;
for i:=n-1 downto 1 do
begin
     s := 0;
    for j := i + 1 to n do
    begin
      s:=s+a[i][j]*x[j];

    end;
    x[i] := (b[i] - s) / a[i][i];


end;

writeln;
for i:=1 to n do  writeln ('x[',i,']=',x[i]);

end;

begin
 clrscr;
          pris;
          gauss;
          writeln ('определитель матрицы ',p);
end.