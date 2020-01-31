program L9Z2;
uses crt;
type mass=array[1..100,1..100] of integer;
var n,m,i,j,max:integer;
    a:mass;
begin
write('n=');readln(n);
write('m=');readln(m);
 for i:=1 to n do begin
                    for j:=1 to m do begin
                                      write('a[',i,',',j,']=');
                                      readln(a[i,j]);
                                     end;
                   writeln;
                   end;
clrscr;
max:=a[1,1];
for i:=1 to n do
  for j:=1 to m do if a[i,j]>max then max:=a[i,j];
for i:=1 to n do
  for j:=1 to m do if i+j<n+1 then a[i,j]:=max;
writeln(max);
end.
