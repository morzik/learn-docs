program L10Z4;
uses crt;
type mass=array[1..50,1..30] of integer;
var n,m,i,j,s,k:integer;
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
 for i:=1 to n do begin
                    for j:=1 to m do write(a[i,j],' ');
                    writeln;
                  end;
k:=0;
for i:=1 to n do begin
                 s:=0;
     for j:=1 to m do s:=s+a[i,j];
if s=0 then k:=k+1; end;
writeln(k);
end.
                      