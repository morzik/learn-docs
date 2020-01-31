program lab4_1;
uses crt;
var n,i,s:integer;
begin
readln(n);
s:=0;
for i:=1 to n do
   s:=s+i;
writeln(s);
end.