program L8Z2;
var n,i,ext:longint; 
a:array[1..35] of longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
ext:=a[1];
for i:=2 to n do
 if a[i]>ext then ext:=a[i];
writeln(ext);
end. 