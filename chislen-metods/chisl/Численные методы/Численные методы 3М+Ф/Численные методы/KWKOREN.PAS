program lab6;
uses crt;
    const n=3;
type mass=array [1..n] of real;
     matr=array [1..n,1..n] of real;
var a,s:matr;
    b,x,y:mass;
    ij,k:integer;

procedure prisw;
begin
a[1,1]:=1;           a[1,2]:=0;            a[1,3]:=-1;
a[2,1]:=a[1,2];      a[2,2]:=4;            a[2,3]:= 4;
a[3,1]:=a[1,3];      a[3,2]:=a[2,3];       a[3,3]:=14;

b[1]:=2;
b[2]:=12;
b[3]:=19;
end;

procedure wywod(a:matr);
var i,j:integer;
begin
for i:=1 to n do begin
for j:=1 to n do
write(a[i,j]:2:1,'   ');
writeln;
end;end;

procedure wywod1(a:mass);
var i:integer;
begin
for i:=1 to n do writeln(a[i]:2:1);
end;



procedure simm( var s:matr);
var i,j,k:integer;s1:real;
begin

for i:=1 to n do for j:=1 to n do  s[i,j]:=0;

for i:=1 to n do
begin

              s1:=0;
              for k:=1 to i-1 do s1:=s1+sqr(s[k,i]);

  s[i,i]:=sqrt(a[i,i]-s1);

  for j:=i+1 to n do 
   begin
    s1:=0;
      for k:=1 to i-1 do s1:=s1+s[k,i]* s[k,j];

    s[i,j]:=(a[i,j]-s1)/s[i,i];
   end;{���� �� j}

end;{���� �� i}

end;

procedure vspY(s:matr; var y:mass);
var i,j,k:integer;s1:real;
begin
for j:=1 to n do y[j]:=0;
 
for j:=1 to n do
begin

  s1:=0;
   for k:=1 to j-1 do s1:=s1+s[k,j]*y[k];

  y[j]:=(b[j]-s1)/s[j,j];
end;
end;

procedure reshenie(s:matr; y:mass; var x:mass);
var i,j,k:integer;s1:real;
begin
for i:=1 to n do x[i]:=0;

for i:=n downto 1 do
begin

  s1:=0;
   for k:=i+1 to n do s1:=s1+s[i,k]*x[k];

  x[i]:=(y[i]-s1)/s[i,i];
end;
end;

begin
clrscr;
prisw; writeln('������� �������');wywod(a);

writeln('������� ��������� ������');wywod1(b);  writeln;
{���������� ������� s}
simm(s);
writeln('������� s');
wywod(s);  writeln;
{���������� ��������������� ������� y}
vspy(s,y);
writeln('������� y');
wywod1(y); writeln;
{���������� ������� ������� (�)}
reshenie(s,y,x);
writeln('������� �������');
wywod1(x);

end.