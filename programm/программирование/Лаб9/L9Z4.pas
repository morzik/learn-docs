program L9Z1;
type mass=array[1..100,1..100] of longint;
var n,m,i,j,k,t:longint;
    a:mass;
begin
write('n=');readln(n);
write('m=');readln(m);
 for i:=1 to n do
 for j:=1 to m do begin
                  write('a[',i,',',j,']=');
                  readln(a[i,j]);
                                 end;
t:=0;
for i:=1 to n do begin
                 k:=0;
                 for j:=1 to m do
                  if a[i,1]=a[i,j] then k:=k+1;
                  if k=m then t:=t+1;
                  end;
write(t);
end.