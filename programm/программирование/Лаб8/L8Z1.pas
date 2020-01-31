program L8Z1;
var n,i,k,m:longint;
a:array[1..10000] of longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
k:=0;
for i:=2 to n do
 if a[i]>a[i-1] then k:=k+1;
writeln(k);
end.

                