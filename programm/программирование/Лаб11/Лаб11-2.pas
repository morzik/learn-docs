program z11v2;
uses crt;
var i:integer;
a:string;
begin
readln(a);
i:=1;
while i<=length(a) do
      begin
      insert(a[i],a,i+1);
      i:=i+2;
      end;
writeln(a);
end.
