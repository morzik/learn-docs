program L10Z2;
uses crt;
type mass=array[1..50,1..30] of integer;
var n,m,i,j,min:integer;
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
  min:=a[1,1];
    for i:=2 to n do
      for j:=1 to m do
        if i+j>n+1 then
                        begin
                        if a[i,j]<min then
                        min:=a[i,j];
                        end;
writeln(min);
end.