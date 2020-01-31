program lab8_3;
uses crt;
var M, i, n, k: integer;
a:array[0..8] of integer;
begin
n:=8;
a[0]:=0;
a[1]:=1;
a[2]:=1;
a[3]:=1;
a[4]:=0;
a[5]:=1;
a[6]:=1;
a[7]:=1;
a[8]:=0;
for i:=0 to n do
  write (a[i],' ');
writeln;

a[n]:=a[n]+1;

for i:=n downto 1 do
  if a[i]=2 then begin
    a[i]:=0;
    a[i-1]:=a[i-1]+1;
  end;
    
for i:=0 to n do
  write (a[i],' ');
end.