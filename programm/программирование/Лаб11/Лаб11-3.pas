program z11v3;
uses crt;
var i:integer;
a,c:string;
begin
readln(a);
i:=1;
c:='';
for i:=1 to length(a) do
c:=c+a[i]+a[i];
a:=c;
writeln(a);
end.
