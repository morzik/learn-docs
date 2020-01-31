Program lab7_4;
uses crt;
var pol, otr, nol, flag: boolean; n,i:integer; a:array[1..5] of integer;
begin
n:=5;
a[1]:=10;
a[2]:=3;
a[3]:=-8;
a[4]:=54;
a[5]:=8;

flag:=false;

for i:=1 to n do
write(a[i],'  ');
writeln;

for i:=1 to n do begin
    if a[i]=0 then
      flag:=true;
      nol:=flag;
      end;
      
for i:=1 to n do begin
    if a[i]>0 then
       flag:=true;
       pol:=flag;
       end;

for i:=1 to n do begin
    if a[i]<0 then
       flag:=true;
       otr:=flag;
       end;

write(pol,', ', otr,', ', nol);
end.

